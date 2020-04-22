# airsim_ros_pkgs and airsim_tutorial_pkgs
Developer: Microsoft

Repository: [airsim_ros_pkgs & airsim_tutorial_pkgs](https://github.com/microsoft/AirSim/tree/master/ros/src)

## airsim_ros_pkgs
A ROS wrapper over the AirSim C++ client library. The documentation is quite nice. To add your own functionality,
change the [airsim_ros_wrapper.h](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/include/airsim_ros_wrapper.h)
and the corresponding [airsim_ros_wrapper.cpp](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_ros_wrapper.cpp)

## airsim_tutorial_pkgs
Here, we only talk about one example, [Single drone with monocular and depth cameras, and lidar](https://github.com/microsoft/AirSim/blob/master/docs/airsim_tutorial_pkgs.md)

The example would start rviz with tf's, registered RGBD cloud using depth_image_proc using the depth_to_pointcloud launch file, and the lidar point cloud. **The following is not necessary to know**

It builds the point cloud by taking images data from front left cameras. If you look closely at [airsim_ros_wrapper.cpp](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_ros_wrapper.cpp), you will notice that it publishes the sensor data of the drone as ROS topic. In this way, we can use the image/depth image data to build point cloud.
How ? Look at one of the [launch file](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_tutorial_pkgs/launch/front_stereo_and_center_mono/depth_to_pointcloud.launch) ran by the example, it has some **remap** tags, which help the nodelet (again, not necessary to know the pacakge) knows which data to take to build point cloud.

# General stuff such as Octomap
Look at the files in the [link](https://github.com/zouan616/Airsim-ROS/tree/master/Documentation/General)

# Airsim-ROS general nodes and features
