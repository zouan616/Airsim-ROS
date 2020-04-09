If you look at airsim github, you can find that it now has a ROS wrapper under [this link](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_ros_pkgs)
You should carefully follow the steps in it and the tutorial packages in [here](https://github.com/microsoft/AirSim/tree/master/ros/src/airsim_tutorial_pkgs)
Here are some tips

**The ROS package may fail for first run**

This is exactly what happend to me. On one Friday I built the ROS package, but failed to run it. I leaved everything here and returned on Monday; 
magically, everyting began to work ! I don't understand why, but be patient and don't lose your confidence !

**Add your APIs to control the drone**

Currently the offical ROS wrapper doesn't support controlling the drone; it only provides you with APIs for reading the state of the drone (such as GPS).
So, in order to control the drone in ROS wrapper, you have to add your own APIs, which is **surprisingly easy** thanks to microsoft airsim group. 
Here are the steps:

1. Look at [this .cpp file](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_ros_wrapper.cpp) 
and [this .h file](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/include/airsim_ros_wrapper.h)
2. Those two are the .cpp and .h files for the wrapper. You should notice that the variable named **airsim_client_** in .cpp file is exactly the airsim client for drone. 
3. Now it is just standard C++ programming. Define the function in [.h file](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/include/airsim_ros_wrapper.h),
and implement it in [.cpp file](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_ros_wrapper.cpp). Notice that when implementing it, the function needs to start with the namespace **AirsimROSWrapper::**
4. After you finish implementing the function, you are able to call it in any ROS node (the corresponding .cpp file). I test everything in the file [airsim_node.cpp](https://github.com/microsoft/AirSim/blob/master/ros/src/airsim_ros_pkgs/src/airsim_node.cpp)
5. Remember you have to rebuild the package to test everying. Run **catkin build** under the $Airsim/ros directory and you are ready to test everything.


