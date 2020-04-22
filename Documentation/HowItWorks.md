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
Developer: MAVbench, Airsim and Feiyang Jin

Repository: [here](https://github.com/zouan616/Airsim-ROS/tree/master/ros/src/airsim_ros_pkgs)

This is airsim_ros_pkgs modified by Feiyang Jin, also mainly based on MAVbench. Now I will introduce some general nodes and files one by one.

## [common_mav.h](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/include/common_mav.h)

Include some global variables, structures and functions. Some important stuffs:
  * multiDOFpoint
  * trajectory_t, which is deque of multiDOFpoint, is the structure that saves trajectory for drone to fly
  * yaw_strategy_t, specify how the drone will fly based on yaw
  * **follow_trajectory**, control the drone to fly following the trajectory
  
This header file is implemented by [common_mav.cpp](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/src/common_mav.cpp)

## [follow_trajectory_node.cpp](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/src/follow_trajectory_node.cpp)

This is the source file for follow_trajectory node. It will subscribe to the trajectory published, and actually call the **follow_trajectory** function to fly the drone. 

## [future_collision.cpp](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/src/future_collision.cpp)

This is the source file for future_collision node. It will subscribe to the trajecotry published, and to the octomap server. It dynamically update the octomap, and once find a collision on the trajectory, it will published the collision topic. 

## [motion_planner.cpp](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/src/motion_planner.cpp)

This is the source file for motion_planner node. It subscribes to request from mission node, and to the octomap server. It will generate corresponding trajectory for drone to fly. **This trajectory may have collision in the future, because the map is dynamically builts in some cases**. This is why we need future_collision node. 

# Scanning mission
Documentation: [here](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/Example-mission/scanning.md)

# Package delivery mission
Documentation: [here](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/Example-mission/pacakge_delivery_dynamic.md)
