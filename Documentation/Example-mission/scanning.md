# Prerequisites
Beside [Airsim_ros_pkgs](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_ros_pkgs), there are three other packages you need to install by yourself.

1. [OMPL](https://ompl.kavrakilab.org/)

2. [mav_trajectory_generation](https://github.com/ethz-asl/mav_trajectory_generation)

3. [octomap](https://github.com/OctoMap/octomap). You also need to install the ROS-integration for octomap, the package is [octomap_mapping](http://wiki.ros.org/octomap_mapping)

# Setup
Once you finish all the prerequisites, download the "ros" folder in this repository, and replace the "ros" folder in Airsim directory with it.
Then run the following commands in Airsim directory:

cd ros

catkin clean

catkin build

# Running scanning example
## Set airsim settings.json
```shell
 $ source PATH_TO/AirSim/ros/devel/setup.bash
 $ roscd airsim_tutorial_pkgs
 $ cp settings/front_stereo_and_center_mono.json ~/Documents/AirSim/settings.json
 
##This setting contains the necessary sensors to generate Point-Cloud
```

## Start airsim
Now, start the block environment and running. If you do not know how, follow [Airsim tutorial](https://microsoft.github.io/AirSim/unreal_blocks/)

## Running
Open a new terminal and run the following commands
```shell
 $ roslaunch airsim_ros_pkgs airsim_node.launch
 ## Open a new Tab,
 $ roslaunch airsim_ros_pkgs scanning.launch
```
At this point, the drone should alreay fly in the air, and RVIZ should show the corresponding Octomap generated. 

Now you need to give the drone an area to scan with width, length, number of lanes and height. Because scanning mission **does not** contain objection detection and collision checking
(actually, this application should be running in a obstacle free environemnt such as a farmland), you need to be careful with the width and length.
A typical area would be "10 30 5 10".

Once you give the command, the trajectory will be generated and shown in RVIZ; the drone will follow the trajecotry to fly.
