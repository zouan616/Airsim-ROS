# airsim_ros_pkgs and airsim_tutorial_pkgs
Developer: Microsoft

Repository: [airsim_ros_pkgs & airsim_tutorial_pkgs](https://github.com/microsoft/AirSim/tree/master/ros/src)

## airsim_ros_pkgs
A ROS wrapper over the AirSim C++ client library. The documentation is quite nice. To add your own functionality,
change the [airsim_ros_wrapper.h](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/include/airsim_ros_wrapper.h)
and the corresponding [airsim_ros_wrapper.cpp](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_ros_wrapper.cpp)

## airsim_tutorial_pkgs
Here, we only talk about one example, [Single drone with monocular and depth cameras, and lidar](https://github.com/microsoft/AirSim/blob/master/docs/airsim_tutorial_pkgs.md)

The example would start rviz with tf's, registered RGBD cloud using depth_image_proc using the depth_to_pointcloud launch file, and the lidar point cloud.
It builds the point cloud by taking images data from front left cameras. 

# Airsim-ROS general nodes and features
