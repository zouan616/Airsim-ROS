# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "airsim_ros_pkgs: 8 messages, 8 services")

set(MSG_I_FLAGS "-Iairsim_ros_pkgs:/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(airsim_ros_pkgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" "trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/MultiDOFJointTrajectory:geometry_msgs/Point"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" "std_msgs/Header:airsim_ros_pkgs/multiDOF"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" "geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" ""
)

get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_custom_target(_airsim_ros_pkgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "airsim_ros_pkgs" "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Services
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_cpp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Module File
_generate_module_cpp(airsim_ros_pkgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(airsim_ros_pkgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(airsim_ros_pkgs_generate_messages airsim_ros_pkgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_cpp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(airsim_ros_pkgs_gencpp)
add_dependencies(airsim_ros_pkgs_gencpp airsim_ros_pkgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS airsim_ros_pkgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Services
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_eus(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Module File
_generate_module_eus(airsim_ros_pkgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(airsim_ros_pkgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(airsim_ros_pkgs_generate_messages airsim_ros_pkgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_eus _airsim_ros_pkgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(airsim_ros_pkgs_geneus)
add_dependencies(airsim_ros_pkgs_geneus airsim_ros_pkgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS airsim_ros_pkgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Services
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_lisp(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Module File
_generate_module_lisp(airsim_ros_pkgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(airsim_ros_pkgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(airsim_ros_pkgs_generate_messages airsim_ros_pkgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_lisp _airsim_ros_pkgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(airsim_ros_pkgs_genlisp)
add_dependencies(airsim_ros_pkgs_genlisp airsim_ros_pkgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS airsim_ros_pkgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Services
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_nodejs(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Module File
_generate_module_nodejs(airsim_ros_pkgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(airsim_ros_pkgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(airsim_ros_pkgs_generate_messages airsim_ros_pkgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_nodejs _airsim_ros_pkgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(airsim_ros_pkgs_gennodejs)
add_dependencies(airsim_ros_pkgs_gennodejs airsim_ros_pkgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS airsim_ros_pkgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_msg_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Services
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)
_generate_srv_py(airsim_ros_pkgs
  "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
)

### Generating Module File
_generate_module_py(airsim_ros_pkgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(airsim_ros_pkgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(airsim_ros_pkgs_generate_messages airsim_ros_pkgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv" NAME_WE)
add_dependencies(airsim_ros_pkgs_generate_messages_py _airsim_ros_pkgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(airsim_ros_pkgs_genpy)
add_dependencies(airsim_ros_pkgs_genpy airsim_ros_pkgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS airsim_ros_pkgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/airsim_ros_pkgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(airsim_ros_pkgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(airsim_ros_pkgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(airsim_ros_pkgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/airsim_ros_pkgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(airsim_ros_pkgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(airsim_ros_pkgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(airsim_ros_pkgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/airsim_ros_pkgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(airsim_ros_pkgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(airsim_ros_pkgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(airsim_ros_pkgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/airsim_ros_pkgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(airsim_ros_pkgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(airsim_ros_pkgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(airsim_ros_pkgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/airsim_ros_pkgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(airsim_ros_pkgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(airsim_ros_pkgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(airsim_ros_pkgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
