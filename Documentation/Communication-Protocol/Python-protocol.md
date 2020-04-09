# Prerequisite
## Airsim on host computer
1. Install Airsim on a powerful computer
2. Install airsim using pip and all its dependence. 

## ROS on Jetson board
1. Install ROS (I used kinetic version) on Jetson board

# Usage
## Connection
1. Connect host computer and Jetson board under same network. In our set-up we connect the two by a ethernet cable.
2. **Linux configuration using ethernet cable only** Open Network setting, and choose the wired connection settings. Under the IPV4 section, choose local link. 
3. Find the IP address of Jetson board. On Linux you can do **hostname -I** in terminal. Let this address be **A**

## set-up on Jetson board
Put the two python files under same directory, change TCP_IP in serverOnJetson.py to **A**

## set-up on host computer
1. Put the two python files under same directory
2. Change TCP_IP in AirSimJetsonTcpWithProtocol.py to **A**

## Running
1. In Jetson board terminal, type "python serverOnJetson.py"
2. Run Airsim on host computer
3. On host computer, type "python AirSimJetsonTcpWithProtocol.py"
To end the program, type "end" in Jetson board terminal.