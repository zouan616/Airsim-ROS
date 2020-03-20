# The Open Motion Planning Library
Once we succefully build a 3D map, we want to do some path planning, or motion planning for our drone. Trying to find a good library 
takes me sometime, and I decide to use the same library as MAVbench, [the Open Motion Planning Library](https://ompl.kavrakilab.org/index.html).
Quick introduction from its website:

>OMPL, the Open Motion Planning Library, consists of many state-of-the-art sampling-based motion planning algorithms. OMPL itself does not contain any code related to, e.g., collision checking or visualization. This is a deliberate design choice, so that OMPL is not tied to a particular collision checker or visualization front end. The library is designed so it can be easily integrated into systems that provide the additional needed components.

>OMPL.app, the front-end for OMPL, contains a lightweight wrapper for the FCL and PQP collision checkers and a simple GUI based on PyQt / PySide. The graphical front-end can be used for planning motions for rigid bodies and a few vehicle types (first-order and second-order cars, a blimp, and a quadrotor). It relies on the Assimp library to import a large variety of mesh formats that can be used to represent the robot and its environment.

# Integrate OMPL with ROS project
This may take sometime, the [CMake integration tutorial](https://ompl.kavrakilab.org/buildSystem.html) on its website does not work for me. After searching it for hours,
I finally fix it. So, to integrate OMPL into your ROS project, do the followings:
1. Open the *CMakeLists.txt* for the ROS package
2. Add **find_package(ompl REQUIRED)**
3. For your execuatble, add **target_link_libraries(executable_name libompl.so)**

# OMPL with octomap
As said by OMPL documentation,

> OMPL is flexible and applicable to a wide variety of robotic systems.  As a consequence to thisflexibility, the library does not explicitly represent the geometry of the workspace or the robotoperating in it. This is deliberate since there exists a vast amount of file formats, data structures andother means of representation for robotic systems. As a result, the user must select a computationalrepresentation for the robot and provide an explicit state validity/collision detection method. Theredoes not exist a default collision checker in OMPL. This allows the library to operate with relativelyfew assumptions, allowing it to plan for a huge number of systems while remaining compact andportable.

Basically, it does not have 1. **Graphic interface **, and 2. **collision checker**. Our job is to design **a collision checker and a motion checker based on octomap.**

My suggestion and solution is to look the [design in MAVbench](https://github.com/MAVBench/MAV_apps/blob/acfa40a528240f87f409f2205ca2f18460a705e0/package_delivery/src/motion_planner.cpp), it works pretty well and format like a text book. 
