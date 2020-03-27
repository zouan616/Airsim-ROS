#!/bin/sh

DESTDIR=/home/airsim/project/AirSim/ros/build/nlopt/nlopt_install make install

cp -r /home/airsim/project/AirSim/ros/build/nlopt/nlopt_install//home/airsim/project/AirSim/ros/install/* /home/airsim/project/AirSim/ros/devel/.private/nlopt/
