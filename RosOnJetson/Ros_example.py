#!/usr/bin/env python

import rospy

import time

# run the example using    rosrun airsim example_name.py
# output of the node can be viewed by   rostopic echo /example_name
# tutorial https://microsoft.github.io/AirSim/docs/ros/

def airpub():
    pub = rospy.Publisher("airsimPose", PoseStamped, queue_size=1)
    rospy.init_node('airpub', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():
        # populate PoseStamped ros message
        simPose = PoseStamped()
        simPose.pose.position.x = pos.x_val
        simPose.pose.position.y = pos.y_val
        simPose.pose.position.z = pos.z_val
        simPose.pose.orientation.w = orientation.w_val
        simPose.pose.orientation.x = orientation.x_val
        simPose.pose.orientation.y = orientation.y_val
        simPose.pose.orientation.z = orientation.z_val
        simPose.header.stamp = rospy.Time.now()
        simPose.header.seq = 1
        simPose.header.frame_id = "simFrame"
        
        # log PoseStamped message
        rospy.loginfo(simPose)
        #publish PoseStamped message
        pub.publish(simPose)
        # sleeps until next cycle 
        rate.sleep()


if __name__ == '__main__':
    try:
        airpub()
    except rospy.ROSInterruptException:
        pass
