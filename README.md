# Airsim-ROS
This repository currently contains

1. communication protocols between Airsim on a host computer and Jetson board

2. Some example missions for drone combined with ROS. 

This reposityory and its code is mainly modified from [MAVbench](https://github.com/harvard-edge/MAVBench). Our goal is to explore how scheduling strategies on ROS can affect the performance of Cyber-physical system. 

To see the documentations for both communication protocols and example missions, please go to **Documentation**

# Update on May 14 2019
The latest Airsim-ROS now includes a battery model for the drone. Because the power model is a feature directly added on Airsim, it is not enough to just modify the ros package of it. A lot of files has been changed in AirSim/AirLib folder to support the power model. Now to use this version, follow the steps below:

1. go to https://github.com/FeiyangJin/airsim-ros-backup

2. Download this repository

3. Build it as you build AirSim(first **./setup.sh** then **./build.sh** )

This will build the AirSim Version with power model included. To use it, you need to change your settings.json to include the power model parameter. You can directly copy this file into you directory (/home/username/Documents/AirSim).
  
  
