#include "ros/ros.h"
#include <ros/spinner.h>
#include "common_mav.h"
#include <visualization_msgs/Marker.h>
#include "airsim_ros_pkgs/get_trajectory.h"

enum State { setup, waiting, flying, trajectory_completed, failed, invalid };

geometry_msgs::Point get_start() {
    geometry_msgs::Point start;

    start.x = 0; start.y = 0; start.z = 0;
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
	cout << "hello" << endl;
	
	// variables
	trajectory_t normal_traj;
    const float goal_s_error_margin = 3.0;
    geometry_msgs::Point start, goal;


    // publisher and subscribers
    ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>("scanning_visualization_marker", 100);
	ros::ServiceClient get_trajectory_client = nh.serviceClient<airsim_ros_pkgs::get_trajectory>("get_trajectory_srv");


	uint32_t shape = visualization_msgs::Marker::CUBE;
	// visulization
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

	geometry_msgs::Twist twist;
    twist.linear.x = twist.linear.y = twist.linear.z = 1;
    geometry_msgs::Twist acceleration;
    acceleration.linear.x = acceleration.linear.y = acceleration.linear.z = 1; 
	ros::Rate pub_rate(80);
	for (State state = setup; ros::ok(); ) {
		pub_rate.sleep();
        ros::spinOnce();
        
        State next_state = invalid;
        if(state == setup){
        	goal = get_goal();
            start = get_start();
            next_state = waiting;
        }
        else if(state == waiting){
        	start = get_start();
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
        }
        else if(state == flying){
        	//cout << "flying" << endl;
        	next_state = flying;
        	points.header.stamp = line_strip.header.stamp = line_list.header.stamp = drone_point.header.stamp = ros::Time::now();
            
            marker_pub.publish(points);
            marker_pub.publish(line_strip);
            marker_pub.publish(line_list);
            marker_pub.publish(drone_point);
        }
        else if(state == invalid){
        	cout << "invalid state !" << endl;
        }
        state = next_state;
	}
	return 0;
}