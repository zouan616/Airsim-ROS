# Install script for directory: /home/airsim/project/AirSim/ros/src/airsim_ros_pkgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/airsim/project/AirSim/ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE PROGRAM FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE PROGRAM FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/setup.bash;/home/airsim/project/AirSim/ros/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/setup.bash"
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/setup.sh;/home/airsim/project/AirSim/ros/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/setup.sh"
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/setup.zsh;/home/airsim/project/AirSim/ros/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/setup.zsh"
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/airsim/project/AirSim/ros/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/airsim/project/AirSim/ros/install" TYPE FILE FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/msg" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/GPSYaw.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmd.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/multiDOF_array.msg"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/msg/BoolPlusHeader.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/srv" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Takeoff.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Land.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/LandGroup.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/Reset.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/srv/get_trajectory.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/include/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/share/roseus/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/share/common-lisp/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/share/gennodejs/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib/python2.7/dist-packages/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib/python2.7/dist-packages/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgsConfig.cmake"
    "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE FILE FILES "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs" TYPE EXECUTABLE FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node"
         OLD_RPATH "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib:/opt/ros/melodic/lib:/home/airsim/catkin_ws2/devel/lib:/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/output/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib/libairsim_ros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so"
         OLD_RPATH "/opt/ros/melodic/lib:/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib:/home/airsim/catkin_ws2/devel/lib:/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/output/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/airsim/project/AirSim/ros/devel/.private/airsim_ros_pkgs/lib/libpd_position_controller_simple.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE FILE FILES "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/README.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE DIRECTORY FILES
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/launch"
    "/home/airsim/project/AirSim/ros/src/airsim_ros_pkgs/rviz"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/rpclib_wrapper/cmake_install.cmake")
  include("/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/AirLib/cmake_install.cmake")
  include("/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/MavLinkCom/cmake_install.cmake")
  include("/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/airsim/project/AirSim/ros/build/airsim_ros_pkgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
