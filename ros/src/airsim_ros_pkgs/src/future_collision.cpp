#include "ros/ros.h"

// Standard headers
#include <chrono>
#include <string>
#include <cmath>
#include <signal.h>

// ROS message headers
#include "std_msgs/Bool.h"
#include "std_msgs/Int32.h"
#include "trajectory_msgs/MultiDOFJointTrajectory.h"

// Octomap specific headers
#include <octomap/octomap.h>
#include <octomap/OcTree.h>
#include <octomap_msgs/GetOctomap.h>
#include <octomap_msgs/conversions.h>

// MAVBench headers
//#include "timer.h"
#include <airsim_ros_pkgs/BoolPlusHeader.h>
#include <airsim_ros_pkgs/multiDOF_array.h>

// Octomap server headers
#include <octomap_server/OctomapServer.h>

//airsim
#include "airsim_ros_wrapper.h"

using namespace octomap_server;

// Typedefs
typedef airsim_ros_pkgs::multiDOF_array traj_msg_t;
typedef std::chrono::system_clock sys_clock;
typedef std::chrono::time_point<sys_clock> sys_clock_time_point;
static const sys_clock_time_point never = sys_clock_time_point::min();

// Profiling variables
ros::Time start_hook_chk_col_t, end_hook_chk_col_t;                                          
long long g_checking_collision_kernel_acc = 0;
ros::Time g_checking_collision_t;
long long g_future_collision_main_loop = 0;
int g_check_collision_ctr = 0;
double g_distance_to_collision_first_realized = 0;
bool CLCT_DATA = false;
bool DEBUG = false;
ros::Time g_pt_cloud_header;    //this is used to figure out the octomap msg that 
                                //collision was detected in

long long g_pt_cloud_future_collision_acc = 0;
int g_octomap_rcv_ctr = 0;

ros::Duration g_pt_cloud_to_future_collision_t; 

bool g_got_new_traj = false;

// Global variables
octomap::OcTree * octree = nullptr;
traj_msg_t traj;
double drone_height__global = 0.5;
double drone_radius__global = 1;

AirsimROSWrapper* airsim_ros_wrapper_pointer;

//Profiling
int g_main_loop_ctr = 0;
long long g_accumulate_loop_time = 0; //it is in ms
long long g_pt_cld_to_octomap_commun_olverhead_acc = 0;

long long octomap_integration_acc = 0;
int octomap_ctr = 0;


template <class T>
bool collision(octomap::OcTree * octree, const T& n1, const T& n2)
{
	const double pi = 3.14159265359;

    const double height = drone_height__global; 
    const double radius = drone_radius__global; 

	const double angle_step = pi/4;

    using namespace octomap_server;
	const double radius_step = radius/3;
	const double height_step = height/2;

	double dx = n2.x - n1.x;
	double dy = n2.y - n1.y;
	double dz = n2.z - n1.z;

	double distance = std::sqrt(dx*dx + dy*dy + dz*dz);

	octomap::point3d direction(dx, dy, dz);
	octomap::point3d end;

	for (double h = -height/2; h <= height/2; h += height_step) {
		for (double r = 0; r <= radius; r += radius_step) {
			for (double a = 0; a <= pi*2; a += angle_step) {
				octomap::point3d start(n1.x + r*std::cos(a), n1.y + r*std::sin(a), n1.z + h);

				if (octree->castRay(start, direction, end, true, distance)) {
					return true;
				}
			}
		}
	}

	return false;
}


template <class T>
double dist_to_collision(AirsimROSWrapper& airsim_ros_wrapper, const T& col_pos) {
    auto drone_pos = airsim_ros_wrapper.getPosition();

	double dx = abs(drone_pos.x() - col_pos.y);
	double dy = abs(drone_pos.y() - col_pos.x);
	double dz = abs(drone_pos.z()) - col_pos.z;

	return std::sqrt(dx*dx + dy*dy + dz*dz);
}


template <class T>
bool in_safe_zone(const T& start, const T& pos) {
    const double radius = drone_radius__global;
    const double height = drone_height__global;

	double dx = start.x - pos.x;
	double dy = start.y - pos.y;
	double dz = start.z - pos.z;

    return (std::sqrt(dx*dx + dy*dy) < radius && std::abs(dz) < height);
}


void pull_octomap(const octomap_msgs::Octomap& msg)
{
    if (octree != nullptr) {
        delete octree;
    }

	octomap::AbstractOcTree * tree = octomap_msgs::msgToMap(msg);
	octree = dynamic_cast<octomap::OcTree*> (tree);
    
    if (octree == nullptr) {
        ROS_ERROR("Octree could not be pulled.");
    }
    // if (CLCT_DATA){ 
    //     g_pt_cloud_header = msg.header.stamp; 
        
    //     g_pt_cloud_future_collision_acc += (ros::Time::now() - g_pt_cloud_header).toSec()*1e9;
    //     g_octomap_rcv_ctr++;
    // }
    //ROS_INFO("pulling octomap !");
}


void new_traj(const trajectory_msgs::MultiDOFJointTrajectory::ConstPtr& msg) {
    g_got_new_traj = true;
}


void pull_traj(const traj_msg_t::ConstPtr& msg)
{
    auto pos = airsim_ros_wrapper_pointer->getPosition();
    const auto& traj_front = msg->points.front();
    double x_offset = pos.x() - traj_front.y;
    double y_offset = pos.y() - traj_front.x;
    double z_offset = abs(pos.z()) - traj_front.z;

    traj = *msg;
    for (auto& point : traj.points){
        point.x += x_offset;
        point.y += y_offset;
        point.z += z_offset;
    }
}


bool check_for_collisions(AirsimROSWrapper& airsim_ros_wrapper, sys_clock_time_point& time_to_warn)
{

    start_hook_chk_col_t = ros::Time::now();

    const double min_dist_from_collision = 150.0;
    //const std::chrono::milliseconds grace_period(500);
    const std::chrono::milliseconds grace_period(1000);

    if (octree == nullptr || traj.points.size() < 1) {
        return false;
    };

    bool col = false;

    for (int i = 0; i < traj.points.size() - 1; ++i) {
        auto& pos1 = traj.points[i]; // .transforms[0].translation;
        auto& pos2 = traj.points[i+1]; // .transforms[0].translation;

        if (collision(octree, pos1, pos2)) {
            col = true;

            // Check whether the drone is very close to the point of collision
            auto now = sys_clock::now();
            if (dist_to_collision(airsim_ros_wrapper, pos1) < min_dist_from_collision){
                time_to_warn = now;
    //            	if(CLCT_DATA){ 
    //                 g_distance_to_collision_first_realized = dist_to_collision(drone, pos1);
				// }
            }
            // Otherwise, give the drone a grace period to continue along its
            // path. Don't update the time_to_warn if it's already been set to
            // some time in the future
            else if (time_to_warn == never) {
                time_to_warn = now + grace_period;
            }

            break;
        }
    }

    if (!col)
        time_to_warn = never;
    
    end_hook_chk_col_t = ros::Time::now(); 
    g_checking_collision_t = end_hook_chk_col_t;
    g_checking_collision_kernel_acc += ((end_hook_chk_col_t - start_hook_chk_col_t).toSec()*1e9);
    g_check_collision_ctr++;
    return col;
}


int main(int argc, char** argv)
{
    //airsim 
    

    ros::init(argc, argv, "future_collision");
    ros::NodeHandle n;
    ros::NodeHandle nh("~");
    AirsimROSWrapper airsim_ros_wrapperb(n, nh);
    airsim_ros_wrapper_pointer = &airsim_ros_wrapperb;
    //std::string mapFilename(""), mapFilenameParam("");
    
    //----------------------------------------------------------------- 
	// *** F:DN variables	
	//----------------------------------------------------------------- 
    
    enum State {checking_for_collision, waiting_for_response};

    bool collision_coming = false;
    auto time_to_warn = never;

    airsim_ros_pkgs::BoolPlusHeader col_coming_msg;
    std_msgs::Bool col_imminent_msg;

    ros::Subscriber octomap_sub = nh.subscribe("/octomap_binary", 1, pull_octomap);
    ros::Subscriber new_traj_sub = nh.subscribe<trajectory_msgs::MultiDOFJointTrajectory>("/multidoftraj", 1, new_traj);
    //ros::Subscriber traj_sub = nh.subscribe<traj_msg_t>("/next_steps", 1, boost::bind(pull_traj, airsim_ros_wrapper, _1));
    ros::Subscriber traj_sub = nh.subscribe<traj_msg_t>("/next_steps", 1, pull_traj);
    ros::Publisher col_coming_pub = nh.advertise<airsim_ros_pkgs::BoolPlusHeader>("/col_coming", 1);

    State state, next_state;
    next_state = state = checking_for_collision;
    
    ros::Time main_loop_start_hook_t, main_loop_end_hook_t;

    // Create an octomap server
        //OctomapServer server;
        //ctree = server.tree_ptr();

    // if (nh.getParam("map_file", mapFilenameParam)) {
    //     if (mapFilename != "") {
    //         ROS_WARN("map_file is specified by the argument '%s' and rosparam '%s'. now loads '%s'", mapFilename.c_str(), mapFilenameParam.c_str(), mapFilename.c_str());
    //     } else {
    //         mapFilename = mapFilenameParam;
    //     }
    // }

    // if (mapFilename != "") {
    //     if (!server.openFile(mapFilename)){
    //         ROS_ERROR("Could not open file %s", mapFilename.c_str());
    //         exit(1);
    //     }
    // }
    
    
    ros::Rate loop_rate(60);
    while (ros::ok()) {
        main_loop_start_hook_t = ros::Time::now();

        ros::spinOnce();
        
        // if (CLCT_DATA){ 
        //     g_pt_cloud_header = server.rcvd_point_cld_time_stamp; 
        //     octomap_ctr = server.octomap_ctr;
        //     octomap_integration_acc = server.octomap_integration_acc; 
        //     g_pt_cld_to_octomap_commun_olverhead_acc = server.pt_cld_octomap_commun_overhead_acc;
        // }

        // State machine 
        if (state == checking_for_collision) {
            collision_coming = check_for_collisions(airsim_ros_wrapperb, time_to_warn);
            if (collision_coming) {
                next_state = waiting_for_response;

                col_coming_msg.header.stamp = g_pt_cloud_header;
                col_coming_msg.data = collision_coming;
                col_coming_pub.publish(col_coming_msg);
                g_got_new_traj = false; 

                // Profiling 
                // if(CLCT_DATA){ 
                //     g_pt_cloud_to_future_collision_t = start_hook_chk_col_t - g_pt_cloud_header;
                // } 
                // if(DEBUG) {
                //     ROS_INFO_STREAM("pt cloud to start of checking collision in future collision"<< g_pt_cloud_to_future_collision_t);
                // }
            }
        }else if (state == waiting_for_response) {
            if (g_got_new_traj){
                next_state = checking_for_collision;
            }
        }
        
        state = next_state;
        
        main_loop_end_hook_t = ros::Time::now();
        g_future_collision_main_loop += (main_loop_end_hook_t - main_loop_start_hook_t).toSec()*1e9; 
        
        loop_rate.sleep();
    }
}