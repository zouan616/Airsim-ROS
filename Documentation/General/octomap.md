# Octomap
Octomap is an Efficient Probabilistic 3D Mapping Framework Based on Octrees. Click [this link](https://octomap.github.io/) for documentation.
In MAVBench and this project, we use octomap as our 3D mapping for navigation purpose. 
Follow the documentation to download Octomap as a stand-alone library.

# Octomap on ROS
As far as I can tell, there are several package for octomap on ROS. I suggest installing octomap, ROS integration, and octomap_server.
To install these three packages, follow the instruction on [ROS wiki](http://wiki.ros.org/octomap_mapping)

# Building Octomap using Airsim-ROS-Wrapper
Octomap supports converting point cloud data into octomap. In [Airsim-ROS tutorial](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_tutorial_pkgs), 
The first example is "Single drone with monocular and depth cameras, and lidar", which would start rviz with tf's, registered RGBD cloud using depth_image_proc using the depth_to_pointcloud launch file, and the lidar point cloud.
To integrate octomap with this example, do the following things:
1. Find the launch file "octomap_mapping.launch" under ROS package **octomap_server**
2. Read this file and understand what it is doing
3. Every map requires a coordinate system. Change the value of tag with param name **frame_id** into "world_enu",
so the tag should look like **\<param name="frame_id" type="string" value="world_enu" /\>**
4. Set the remap tag "to" as **/airsim_node/drone_1/front_left_custom/DepthPlanner/registered/points**, 
so the tag should look like **\<remap from="cloud_in" to="/airsim_node/drone_1/front_left_custom/DepthPlanner/registered/points" /\>**
5. I also add another tag, **\<param name="base_frame_id" value="world_enu" /\>**

This finishes the set up, to start this example, you need to:
1. follow [the airsim tutorial for single drone](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_tutorial_pkgs)
2. In RVIZ, you should see the point cloud generated.
3. In terminal, type *"roslaunch octomap_server octomap_mapping.launch"*
4. In RVIZ, click **Add**, choose **By topic**, and add **MarkerArray** under topic **occupied_cells_vis_array**
5. Uncheck all other things in RVIZ, wait some seconds, and you should see the generated octomap in RVIZ.

To save the map, type **rosrun octomap_server octomap_saver airsim_example.bt**

The ros graph of building octomap with airsim-ros-wrapper is here:
![Image of airsim and octomap](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/General/octomap_airsim.png)
