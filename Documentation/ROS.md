1. If modify a file, you need to rebuild the ROS package to make it effective (catkin build <package name>)
2. If need to include a new dependency, modify package.xml and CMakeLists.txt to add dependency. The following example shows we need 
6 packages: roscpp, rospy, std_msgs, message_generation, mav_trajectory_generation, mav_trajectory_generation_ros

Example in package.xml:
>  <build_depend>roscpp</build_depend>
  <build_depend>rospy</build_depend>
  <build_depend>std_msgs</build_depend>
  <build_depend>mav_trajectory_generation</build_depend>
  <build_depend>mav_trajectory_generation_ros</build_depend>

>  <build_export_depend>roscpp</build_export_depend>
  <build_export_depend>rospy</build_export_depend>
  <build_export_depend>std_msgs</build_export_depend>
  <build_export_depend>mav_trajectory_generation</build_export_depend>
  <build_export_depend>mav_trajectory_generation_ros</build_export_depend>
  
>  <exec_depend>roscpp</exec_depend>
  <exec_depend>rospy</exec_depend>
  <exec_depend>std_msgs</exec_depend>
  <exec_depend>mav_trajectory_generation</exec_depend>
  <exec_depend>mav_trajectory_generation_ros</exec_depend>
  
  Example in CMakeLists.txt:
  
>  find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    std_msgs
    message_generation
    mav_trajectory_generation
    mav_trajectory_generation_ros
  )

3. 
