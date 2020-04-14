#include "ros/ros.h"
#include <ros/spinner.h>
#include "common_mav.h"
#include <visualization_msgs/Marker.h>
#include "airsim_ros_pkgs/get_trajectory.h"
#include <airsim_ros_pkgs/multiDOF.h>
#include <airsim_ros_pkgs/multiDOF_array.h>
#include <airsim_ros_pkgs/BoolPlusHeader.h>
#include <airsim_ros_pkgs/follow_trajectory_status_srv.h>


enum State { setup, waiting, flying, trajectory_completed, failed, invalid };

std::string g_mission_status = "time_out";
ros::Time col_coming_time_stamp; 

bool should_panic = false;
bool slam_lost = false;
bool col_coming = false;

double v_max__global = 3, a_max__global = 5, g_fly_trajectory_time_out = 1;
float g_max_yaw_rate= 90;
float g_max_yaw_rate_during_flight = 90;

geometry_msgs::Vector3 panic_velocity;


double dist(Vector3r t, geometry_msgs::Point m)
{
    // We must convert between the two coordinate systems
    return std::sqrt((t.x()-m.y)*(t.x()-m.y) + (t.y()-m.x)*(t.y()-m.x) + (t.z()+m.z)*(t.z()+m.z));
}

void col_coming_callback(const airsim_ros_pkgs::BoolPlusHeader::ConstPtr& msg) {
    col_coming = msg->data;
}


void slam_loss_callback (const std_msgs::Bool::ConstPtr& msg) {
    slam_lost = msg->data;
}


geometry_msgs::Point get_start(AirsimROSWrapper& airsim_ros_wrapper) {
    geometry_msgs::Point start;
    auto pos = airsim_ros_wrapper.getPosition();
    start.x = pos.y(); start.y = pos.x(); start.z = abs(pos.z());
    return start;
}

geometry_msgs::Point get_goal() {
    geometry_msgs::Point goal;

    // Get intended destination from user
    std::cout << "Please input your destination in x,y,z format." << std::endl;
    double input_x, input_y, input_z;
    std::cin >> input_x >> input_y >> input_z;
    goal.x = input_x; goal.y = input_y; goal.z = input_z;

    return goal;
}


trajectory_t request_trajectory(ros::ServiceClient& client, geometry_msgs::Point start, geometry_msgs::Point goal, 
    geometry_msgs::Twist twist, geometry_msgs::Twist acceleration) {
    // Request the actual trajectory from the motion_planner node
    airsim_ros_pkgs::get_trajectory srv;
    srv.request.start = start;
    srv.request.goal = goal;
    srv.request.twist  = twist; 
    srv.request.acceleration= acceleration; 
    int fail_ctr = 0;
    
   while(true){ 
       if(client.call(srv)) {
           if(!srv.response.path_found){
               return trajectory_t();
           }else{
               break;
           }
       } else {
           ROS_ERROR("Failed to call service.");
       }
       std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
    
    return create_trajectory(srv.response.multiDOFtrajectory, true);
}


bool trajectory_done(const trajectory_t& trajectory) {
    return trajectory.size() == 0;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "package_delivery", ros::init_options::NoSigintHandler);
    ros::NodeHandle nh;
    ros::NodeHandle n_private("~");
    AirsimROSWrapper airsim_ros_wrapper(nh, n_private);
    
    // variables
        geometry_msgs::Point start, goal;
        airsim_ros_pkgs::follow_trajectory_status_srv follow_trajectory_status_srv_inst;
        int fail_ctr = 0;
        int fail_threshold = 50;

        trajectory_t normal_traj;
        const float goal_s_error_margin = 3.0;
        
        bool srv_call_status = false;

        std::string mission_status = "time_out";

        geometry_msgs::Twist twist;
        twist.linear.x = twist.linear.y = twist.linear.z = 1;
        geometry_msgs::Twist acceleration;
        acceleration.linear.x = acceleration.linear.y = acceleration.linear.z = 1; 
        ros::Rate pub_rate(80);

    // publisher and subscribers
        ros::ServiceClient get_trajectory_client = nh.serviceClient<airsim_ros_pkgs::get_trajectory>("get_trajectory_srv");
        
        ros::Subscriber slam_lost_sub = nh.subscribe<std_msgs::Bool>("/slam_lost", 1, slam_loss_callback);

        ros::ServiceClient follow_trajectory_status_client = 
            nh.serviceClient<airsim_ros_pkgs::follow_trajectory_status_srv>("/follow_trajectory_status", true);

        ros::Publisher trajectory_pub = nh.advertise <airsim_ros_pkgs::multiDOF_array>("normal_traj", 1);

        ros::Subscriber col_coming_sub = 
            nh.subscribe<airsim_ros_pkgs::BoolPlusHeader>("col_coming", 1, col_coming_callback);
    
        ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>("scanning_visualization_marker", 100);

    // visulization
        uint32_t shape = visualization_msgs::Marker::CUBE;
        visualization_msgs::Marker points, line_strip, line_list, drone_point;
        points.header.frame_id = line_strip.header.frame_id = line_list.header.frame_id = drone_point.header.frame_id = "world_enu";
        points.header.stamp = line_strip.header.stamp = line_list.header.stamp = drone_point.header.stamp = ros::Time::now();
        points.ns = line_strip.ns = line_list.ns = "points_and_lines";
        drone_point.ns = "drone_position";
        points.action = line_strip.action = line_list.action = drone_point.action = visualization_msgs::Marker::ADD;
        points.pose.orientation.w = line_strip.pose.orientation.w = line_list.pose.orientation.w = drone_point.pose.orientation.w= 1.0;

        points.id = 0;
        line_strip.id = 1;
        line_list.id = 2;
        drone_point.id = 3;

        points.type = visualization_msgs::Marker::POINTS;
        drone_point.type = shape;
        line_strip.type = visualization_msgs::Marker::LINE_STRIP;
        line_list.type = visualization_msgs::Marker::LINE_LIST;

        points.scale.x = 0.2;
        points.scale.y = 0.2;

        drone_point.scale.x = 1;
        drone_point.scale.y = 1;
        drone_point.scale.z = 1;

        line_strip.scale.x = 0.1;
        line_list.scale.x = 0.1;

        points.color.g = 1.0f;
        points.color.a = 1.0;

        drone_point.color.g = 0.1;
        drone_point.color.a = 1.0;
        drone_point.color.b = 1.0;

        line_strip.color.b = 1.0;
        line_strip.color.a = 1.0;

        line_list.color.r = 1.0;
        line_list.color.a = 1.0;

    // airsim_ros_wrapper setup
        if (airsim_ros_wrapper.is_used_img_timer_cb_queue_)
        {
            airsim_ros_wrapper.img_async_spinner_.start();
        }

        if (airsim_ros_wrapper.is_used_lidar_timer_cb_queue_)
        {
            airsim_ros_wrapper.lidar_async_spinner_.start();
        }

    for (State state = setup; ros::ok(); ) 
    {
        pub_rate.sleep();
        ros::spinOnce();
        
        State next_state = invalid;
        if(state == setup){
            goal = get_goal();
            start = get_start(airsim_ros_wrapper);

            spin_around(airsim_ros_wrapper);
            next_state = waiting;
        }
        else if(state == waiting){
            start = get_start(airsim_ros_wrapper);
            normal_traj = request_trajectory(get_trajectory_client, start, goal, twist, acceleration);
            cout << normal_traj.size() << endl;
            next_state = flying;

            for(int i = 0; i < normal_traj.size(); i++){
                auto j = normal_traj[i];
                geometry_msgs::Point p;
                p.x = j.x;
                p.y = j.y;
                p.z = j.z;
                points.points.push_back(p);
                line_strip.points.push_back(p);

                // The line list needs two points for each line
                line_list.points.push_back(p);
                p.z += 1.0;
                line_list.points.push_back(p);
            }

            airsim_ros_pkgs::multiDOF_array array_of_point_msg;
            for (auto point : normal_traj){
                airsim_ros_pkgs::multiDOF point_msg;
                point_msg.x = point.x;
                point_msg.y = point.y;
                point_msg.z = point.z;
                point_msg.vx = point.vx;
                point_msg.vy = point.vy;
                point_msg.vz = point.vz;
                point_msg.ax = point.ax;
                point_msg.ay = point.ay;
                point_msg.az = point.az;
                point_msg.yaw = point.yaw;
                point_msg.duration = point.duration;
                array_of_point_msg.points.push_back(point_msg); 

            }
            trajectory_pub.publish(array_of_point_msg);

            if (!normal_traj.empty())
                next_state = flying;
            else {
                next_state = trajectory_completed;
            }
            
        }
        else if(state == flying){
            // visulization
                points.header.stamp = line_strip.header.stamp = line_list.header.stamp = drone_point.header.stamp = ros::Time::now();
                auto current_pos = airsim_ros_wrapper.getPosition();
                drone_point.pose.position.x = current_pos.y();
                drone_point.pose.position.y = current_pos.x();
                drone_point.pose.position.z = (-1)*current_pos.z();
                marker_pub.publish(points);
                marker_pub.publish(line_strip);
                marker_pub.publish(line_list);
                marker_pub.publish(drone_point);

            // Choose next state (failure, completion, or more flying)
            srv_call_status = follow_trajectory_status_client.call(follow_trajectory_status_srv_inst);

            int result = follow_trajectory_status_srv_inst.response.success.data;

            if(!srv_call_status){
                ROS_INFO_STREAM("could not make a service all to trajectory done");
                next_state = flying;
            }else if (result == 1) {
                ROS_INFO("going to end this mission");
                next_state = trajectory_completed; 
                twist = follow_trajectory_status_srv_inst.response.twist;
                acceleration = follow_trajectory_status_srv_inst.response.acceleration;
            }
            else if (col_coming){
                ROS_INFO_STREAM("collisoin coming");
                next_state = trajectory_completed; 
                twist = follow_trajectory_status_srv_inst.response.twist;
                acceleration = follow_trajectory_status_srv_inst.response.acceleration; 
                spin_around(airsim_ros_wrapper);
            }
            else{
                ROS_INFO("still flying");
                next_state = flying;
            }

        }
        else if(state == trajectory_completed){
            fail_ctr = normal_traj.empty() ? fail_ctr+1 : 0; 

            if(col_coming){
                start = get_start(airsim_ros_wrapper);
                next_state = waiting;
                col_coming = false;
            }
            else if(dist(airsim_ros_wrapper.getPosition(), start) < goal_s_error_margin){
                ROS_INFO("Delivered the package");
                mission_status = "completed"; 
                g_mission_status = mission_status;            
                ros::shutdown();
            }
            else if (normal_traj.empty()){
                std::this_thread::sleep_for(std::chrono::milliseconds(100));
            }

            if (fail_ctr >fail_threshold) {
                next_state = failed;
                mission_status = "planning_failed_too_many_times";
            }
            else { 
                start = get_start(airsim_ros_wrapper);
                next_state = waiting;
            }
        }
        else if (state == failed) {
            ROS_ERROR("Failed to reach destination");
            g_mission_status = mission_status;
            next_state = setup;
        }
        else if(state == invalid){
            cout << "invalid state !" << endl;
            break;
        }

        state = next_state;

    }

    return 0;
}