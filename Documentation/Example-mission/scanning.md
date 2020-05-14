# Demo
[Scanning demo](https://drive.google.com/open?id=1TCkpnr4zaBVI_QtsMdepNsQwx7OrNMiI)

# Prerequisites
Beside [Airsim_ros_pkgs](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_ros_pkgs), there are three other packages you need to install by yourself.

1. [OMPL](https://ompl.kavrakilab.org/)

2. [mav_trajectory_generation](https://github.com/ethz-asl/mav_trajectory_generation)
(This one may have some problems when installing. Check [Oren's issue](https://github.com/ethz-asl/mav_trajectory_generation/issues/105))

3. [octomap](https://github.com/OctoMap/octomap). You also need to install the ROS-integration for octomap, the package is [octomap_mapping](http://wiki.ros.org/octomap_mapping)

# Setup
Then run the following commands in Airsim directory:

```Shell
$ cd ros
$ catkin clean
$ catkin build
```

## Error may happen
You may encounter an issue similar to this 
```shell
/AirSim/AirLib/include/common/common_utils/json.hpp:6057:62: error: wrong number of template arguments (1, should be 2)
                     return *lhs.m_value.array < *rhs.m_value.array;
```
This is a common issue and can be easily googled. For your convenience, change the line in json.hpp to 

**return (\*lhs.m_value.array) < \*rhs.m_value.array;**

will make this compile.

## Update on 04/27/2020
As Airsim has an recent update, which changes something related to its ros package, my version of airsim_ros_pkgs may fail to build. The solution is go to the [CMakeLists.txt](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/CMakeLists.txt), and make the following change:

Add the following immediately below **set(CMAKE_CXX_STANDARD 11)**

```shell
set(CXX_EXP_LIB "-nostdinc++ -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -nodefaultlibs 
-l/usr/lib/x86_64-linux-gnu/libc++.so -l/usr/lib/x86_64-linux-gnu/libc++abi.so
-lm -lc -lgcc_s -lgcc  
-lstdc++fs -fmax-errors=10 -Wnoexcept -Wstrict-null-sentinel")
```

# Running scanning example
## Start airsim
Now, start the block environment and running. If you do not know how, follow [Airsim tutorial](https://microsoft.github.io/AirSim/unreal_blocks/)

## Running by launch file
Open a new terminal and run the following commands
```shell
 $ roslaunch airsim_ros_pkgs airsim_node.launch
 ## Open a new Tab,
 $ roslaunch airsim_ros_pkgs scanning.launch
```

## Running by separating different nodes (if fail to run first method)
Open 4 terminal tabs and run each command in an individual tab
```shell
 $ roslaunch airsim_ros_pkgs airsim_node.launch
 $ roslaunch airsim_tutorial_pkgs front_stereo_and_center_mono.launch
 $ roslaunch airsim_ros_pkgs octomap_server.launch
 $ rosrun airsim_ros_pkgs scanning_node
```
## Give command
At this point, the drone should alreay fly in the air, and RVIZ should show the corresponding Octomap generated. 

Now you need to give the drone an area to scan with width, length, number of lanes and height (in the tab of scanning.launch or scanning_node). Because scanning mission **does not** contain objection detection and collision checking
(actually, this application should be running in a obstacle free environemnt such as a farmland), you need to be careful with the width and length.
A typical area would be "10 30 5 10".

Once you give the command, the trajectory will be generated and shown in RVIZ; the drone will follow the trajecotry to fly.

## Ending
If you do not end all the things in sequence, airsim may crash. To finish everything cleanly,
1. Stop the simulation in Unreal

2. Stop each terminal by ctrl-c

## ROS node graph
![scanning ros graph](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/Image/scanning_rosGraph.png)

## Analysis
Gneral node involved: airsim_node, depth_to_pointcloud_manager, airsim_depth2cloud, ned_to_enu_pub

Mission-Specific node involved: [scanning_node](https://github.com/zouan616/Airsim-ROS/blob/master/ros/src/airsim_ros_pkgs/src/scanning_node.cpp), octomap_server

As scanning mission is supposed to run on a collision-free environment, it does not need future collision node. Furthermore, motion planner is not included neither: the trajectory is designed by hand. 
