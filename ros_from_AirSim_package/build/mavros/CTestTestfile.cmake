# CMake generated Testfile for 
# Source directory: /home/airsim/project/AirSim/ros/src/mavros/mavros
# Build directory: /home/airsim/project/AirSim/ros/build/mavros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mavros_gtest_libmavros-frame-conversions-test "/home/airsim/project/AirSim/ros/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-frame-conversions-test.xml" "--return-code" "/home/airsim/project/AirSim/ros/devel/.private/mavros/lib/mavros/libmavros-frame-conversions-test --gtest_output=xml:/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-frame-conversions-test.xml")
add_test(_ctest_mavros_gtest_libmavros-sensor-orientation-test "/home/airsim/project/AirSim/ros/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-sensor-orientation-test.xml" "--return-code" "/home/airsim/project/AirSim/ros/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test --gtest_output=xml:/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-sensor-orientation-test.xml")
add_test(_ctest_mavros_gtest_libmavros-quaternion-utils-test "/home/airsim/project/AirSim/ros/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-quaternion-utils-test.xml" "--return-code" "/home/airsim/project/AirSim/ros/devel/.private/mavros/lib/mavros/libmavros-quaternion-utils-test --gtest_output=xml:/home/airsim/project/AirSim/ros/build/mavros/test_results/mavros/gtest-libmavros-quaternion-utils-test.xml")
subdirs("gtest")
