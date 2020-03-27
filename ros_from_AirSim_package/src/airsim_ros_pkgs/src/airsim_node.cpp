#include "ros/ros.h"
#include "airsim_ros_wrapper.h"
#include <ros/spinner.h>

int main(int argc, char ** argv)
{
    ros::init(argc, argv, "airsim_node");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    AirsimROSWrapper airsim_ros_wrapper(nh, nh_private);

    if (airsim_ros_wrapper.is_used_img_timer_cb_queue_)
    {
        airsim_ros_wrapper.img_async_spinner_.start();
    }

    if (airsim_ros_wrapper.is_used_lidar_timer_cb_queue_)
    {
        airsim_ros_wrapper.lidar_async_spinner_.start();
    }

    // std::cout << "Press Enter to takeoff" << std::endl; std::cin.get();
    // float takeoffTimeout = 5;
    // airsim_ros_wrapper.takeoff_jin();

    // std::cout << "Press Enter to move to position (-10,10,-10) in velocity 5" << std::endl; std::cin.get();
    // float x = -10;
    // float y = 10;
    // float z = -10;
    // float velocity = 5;
    // airsim_ros_wrapper.moveTo(x,y,z,velocity);

    // std::cout << "Press Enter to move on path in velocity 3" << std::endl; std::cin.get();
    // velocity = 3;
    // vector<Vector3r> path;
    // path.push_back(Vector3r(-10,40,-40));
    // path.push_back(Vector3r(-10,30,-35));
    // path.push_back(Vector3r(-15,20,-35));
    // airsim_ros_wrapper.moveOnPath(path,velocity);

    // std::cout << "Press Enter to end task" << std::endl; std::cin.get();
    // bool exit = airsim_ros_wrapper.end();
    ros::spin();

    return 0;
} 