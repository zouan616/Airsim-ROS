#include "Drone.h"
#include "ros/ros.h"
#include <iostream>
#include <vector>
#include <cstring>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>



// float Drone::get_yaw(AirsimROSWrapper& airsim_ros_wrapper)
// {
// 	//auto q = client->getOrientation();
// 	auto pose = this->pose();
//     msr::airlib::Quaternionr q(pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w);
//     float p, r, y;
//     msr::airlib::VectorMath::toEulerianAngle(q, p, y, r);

// 	return -y*180 / M_PI;
// }

static float xy_yaw(double x, double y) {
    if (x == 0 && y == 0)
        return YAW_UNCHANGED;
    return 90 - atan2(y, x)*180.0/3.14;
}


// bool fly_velocity(AirsimROSWrapper& airsim_ros_wrapper, double vx, double vy, double vz, float yaw, double duration)
// {
//     //getCollisionInfo();

// 	try {
//         if (yaw != YAW_UNCHANGED) {
//             float target_yaw = yaw;
//             if (yaw == FACE_FORWARD)
//                 target_yaw = xy_yaw(vx, vy);
//             else if (yaw == FACE_BACKWARD) {
//                 target_yaw = xy_yaw(vx, vy);
//                 target_yaw += 180;
//                 target_yaw = target_yaw <= 180 ? target_yaw : target_yaw-360;
//             }

//             float yaw_diff = (int(target_yaw - get_yaw()) + 360) % 360;
//             yaw_diff = yaw_diff <= 180 ? yaw_diff : yaw_diff - 360;
            
//             if (yaw_diff >= 5)
//                 yaw_diff -= 5;
//             else if (yaw_diff <= -5)
//                 yaw_diff += 5;
//             else
//                 yaw_diff = 0;

//             float yaw_rate = yaw_diff / duration;

//             if (yaw_rate > max_yaw_rate_during_flight)
//                 yaw_rate = max_yaw_rate_during_flight;
//             else if (yaw_rate < -max_yaw_rate_during_flight)
//                 yaw_rate = -max_yaw_rate_during_flight;

//             auto drivetrain = msr::airlib::DrivetrainType::MaxDegreeOfFreedom;
//             auto yawmode = msr::airlib::YawMode(true, yaw_rate);

//             //client->moveByVelocity(vy, vx, -vz, duration, drivetrain, yawmode);
//         } else {
//             //client->moveByVelocity(vy, vx, -vz, duration);
//         }
//     } catch(...) {
// 		std::cerr << "fly_velocity failed" << std::endl;
// 		return false;
// 	}

// 	return true;
// }