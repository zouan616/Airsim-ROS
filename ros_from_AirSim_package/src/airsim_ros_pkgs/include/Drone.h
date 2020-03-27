#ifndef DRONE_H
#define DRONE_H

#include <geometry_msgs/Pose.h>
#include <ros/ros.h>
#include <stdint.h>
#include <string>
#include <limits>
#include <geometry_msgs/Pose.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include "airsim_ros_wrapper.h"

const float FACE_FORWARD = std::numeric_limits<float>::infinity();
const float FACE_BACKWARD = -std::numeric_limits<float>::infinity();
const float YAW_UNCHANGED = -1e9;

geometry_msgs::Pose pose();
//float get_yaw(AirsimROSWrapper& airsim_ros_wrapper);

// bool fly_velocity(AirsimROSWrapper& airsim_ros_wrapper 
// 	double vx, double vy, double vz, float yaw = YAW_UNCHANGED, double duration = 3);

#endif