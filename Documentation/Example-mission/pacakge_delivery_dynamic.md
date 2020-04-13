# Prerequisites
Make sure you can run the [scanning exmaple](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/Example-mission/scanning.md).
No other installation required.

# Running package delivery dynamic mission
## Mission explanation
The word "dynamic" here means the drone doesn't know its environment before, but gradually built a 3D map for the environment while flying.
In this mission, you first give the drone a coordinate, the drone will fly to the coordinate. It will consistently check if there is a collision
on the planned trajectory, and if there is one, re-planning the trajectory. 

Once the drone flies to the goal coordinate, it will fly back to the start point.

## Start airsim
Start the block environment and running. If you do not know how, follow [Airsim tutorial](https://microsoft.github.io/AirSim/unreal_blocks/)

## Running
Open a new terminal and run the following commands
```shell
 $ roslaunch airsim_ros_pkgs airsim_node.launch
 ## Open a new Tab,
 $ rosrun airsim_ros_pkgs follow_trajectory
 ## Open another new Tab
 $ roslaunch airsim_ros_pkgs package_delivery_dynamic.launch
```
At this point, the drone should alreay fly in the air, and RVIZ should show the corresponding Octomap generated.

Now give the drone a coordinate to fly to. Currently it **does not** check the coordinate validity, so even if the destination is unaccessible it will still try to fly to it.
A good test is coordinate **0 70 10**, which is right behind the wall that is facing the drone.

The ros graph of package delivery dynamic is here:
![Image of package delivery](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/General/package_delivery_ros.svg)
