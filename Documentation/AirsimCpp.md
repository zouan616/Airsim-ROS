# How to run airsim cpp example
Airsim uses cmake process to generate example programe. To understand cmake process please visit [this link](https://mirkokiefer.com/cmake-by-example-f95eb47d45b1)
Now, to generate example cpp programs such as HelloCar or HelloDrone, follow the steps:
1. go to **[Airsim-Directory]/cmake** and stop ! Look at the directories/files there and try to understand it. You should see a CMakeLists.txt file there. 
2. run **cmake CMakeLists.txt** 
3. run **cd HelloDrone**, you should see the corresponding generated Makefile
4. run **make**, the executable program (with name HelloDrone) should be generated under **[Airsim-Directory]/cmake/output/bin**
5. Now, to run the HellorDrone program, open Airsim and start with Drone; and then run "./HelloDrone" in the terminal.
