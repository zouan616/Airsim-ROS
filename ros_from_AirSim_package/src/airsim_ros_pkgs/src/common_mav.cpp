#include "common_mav.h"

#include <iostream>
#include <fstream>
#include <string>
#include <deque>
#include <algorithm>
#include <cmath>
#include <cstdarg>

#include <ros/ros.h>
#include <ros/topic.h>
#include <ros/duration.h>
#include <std_msgs/Bool.h>
#include <std_srvs/Trigger.h>


static multiDOFpoint reverse_point(multiDOFpoint mdp) {
    multiDOFpoint result = mdp;

    result.vx = -mdp.vx;
    result.vy = -mdp.vy;
    result.vz = -mdp.vz;

    return result;
}

// Follows trajectory, popping commands off the front of it and returning those commands in reverse order
void follow_trajectory(AirsimROSWrapper& airsim_ros_wrapper, trajectory_t * traj,trajectory_t * reverse_traj, yaw_strategy_t yaw_strategy, bool check_position, float max_speed, float time){

	trajectory_t reversed_commands;

    static double max_speed_so_far = 0;
    static int ctr = 0;
    
    ros::Time start_hook_t;
    while (time > 0 && traj->size() > 0) {
         
        start_hook_t = ros::Time::now();  
        multiDOFpoint p = traj->front();

        // Calculate the velocities we should be flying at
        double v_x = p.vx;
        double v_y = p.vy;
        double v_z = p.vz;

         
        if (check_position) {
            auto pos = airsim_ros_wrapper.getPosition();
            v_x += 0.2*(p.x-pos.y());
            v_y += 0.2*(p.y-pos.x());
            v_z += 0.5*(p.z+pos.z());
        }
        
        // Calculate the yaw we should be flying with
        float yaw = p.yaw;
        if (yaw_strategy == ignore_yaw)
            yaw = YAW_UNCHANGED;
        else if (yaw_strategy == face_forward)
            yaw = FACE_FORWARD;
        else if (yaw_strategy == face_backward) {
            yaw = FACE_BACKWARD;
        }

        // Make sure we're not going over the maximum speed
        double speed = std::sqrt((v_x*v_x + v_y*v_y + v_z*v_z));
        double scale = 1;
        if (speed > max_speed) {
            scale = max_speed / speed;
            
            v_x *= scale;
            v_y *= scale;
            v_z *= scale;
           speed = std::sqrt((v_x*v_x + v_y*v_y + v_z*v_z));
        }

        // Calculate the time for which these flight commands should run
        double flight_time = p.duration <= time ? p.duration : time;
        double scaled_flight_time = flight_time / scale;

        // Fly for flight_time seconds
        auto segment_start_time = std::chrono::system_clock::now();
        airsim_ros_wrapper.fly_velocity(v_x, v_y, v_z, yaw, scaled_flight_time); 

        std::this_thread::sleep_until(segment_start_time + std::chrono::duration<double>(scaled_flight_time));

        // Push completed command onto reverse-command stack
        multiDOFpoint rev_point = reverse_point(p);
        rev_point.duration = flight_time;
        reversed_commands.push_front(rev_point);

        // Update trajectory
        traj->front().duration -= flight_time;
        if (traj->front().duration <= 0){
            traj->pop_front();
        }

        time -= flight_time;
    }


    // if (reverse_traj != nullptr){
    //     *reverse_traj = append_trajectory(reversed_commands, *reverse_traj);
    // }

}


float yawFromQuat(geometry_msgs::Quaternion q)
{
	float roll, pitch, yaw;

	// Formulas for roll, pitch, yaw
	// roll = atan2(2*(q.w*q.x + q.y*q.z), 1 - 2*(q.x*q.x + q.y*q.y) );
	// pitch = asin(2*(q.w*q.y - q.z*q.x));
	yaw = atan2(2*(q.w*q.z + q.x*q.y), 1 - 2*(q.y*q.y + q.z*q.z));
    yaw = (yaw*180)/3.14159265359;

    return (yaw <= 180 ? yaw : yaw - 360);
}