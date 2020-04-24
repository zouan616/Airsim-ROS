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
 ## be careful here, if one of the propellers does not spin, you need to first ctrl-c the airsim_node.launch,
 ## then stop the simulation. This may happens several times before all four propellers spin normally after you launch the node. 
 ## I don't know why, but if the propeller doesn't run, the drone won't fly in next steps. 
 ## Open a new Tab,
 $ rosrun airsim_ros_pkgs follow_trajectory
 ## Now, wait for the drone to completely take off, and then open another new terminal
 $ roslaunch airsim_ros_pkgs package_delivery_dynamic.launch
```
At this point, the drone should alreay fly in the air, and RVIZ should show the corresponding Octomap generated.

Now give the drone a coordinate to fly to. Currently it **does not** check the coordinate validity, so even if the destination is unaccessible it will still try to fly to it.
A good test is coordinate **0 70 10**, which is right behind the wall that is facing the drone.

or **-80 -100 5**, which is to far to the drone left behind. 

The task has two parts, first, the drone will fly to the coordinate given by you. Then, it will fly back to the start point.
Think this as real life scenario, once the drone delivered the package we want it to fly back automatically. 

## Ending
Once the terminal for package_delivery_dynamic.launch says **Delivered the package**, the mission is finished. 
If you do not end all the things in sequence, airsim may crash. To finish everything cleanly,
1. Stop the simulation in Unreal

2. Stop each terminal by ctrl-c

## ROS node graph
![Image of package delivery](https://github.com/zouan616/Airsim-ROS/blob/master/Documentation/General/package_delivery_ros.png)

## Analysis
General node involved: airsim_node, depth_to_pointcloud_manager, airsim_depth2cloud, ned_to_enu_pub

Mission-Specific node involved: package_delivery_node, octomap_server, panic_pcl, follow_trajectory, future collision, motion planner

After you give the destination coordinate, motion planner node first gives a trajectory based on initial map. As the drone builds its environment gradually, the planned trajectory may have collision. **future collision node** helps to detect collision by consistently checking collision. Once it finds potential collsion, it publishes the message so that package_delivery_node will ask motion planner to replanning. follow_trajectory is the node that actully controls the drone to fly.
