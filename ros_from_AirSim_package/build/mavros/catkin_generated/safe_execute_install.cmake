execute_process(COMMAND "/home/airsim/project/AirSim/ros/build/mavros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/airsim/project/AirSim/ros/build/mavros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
