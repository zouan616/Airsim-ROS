;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::BoolPlusHeader)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'BoolPlusHeader (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::BOOLPLUSHEADER")
  (make-package "AIRSIM_ROS_PKGS::BOOLPLUSHEADER"))

(in-package "ROS")
;;//! \htmlinclude BoolPlusHeader.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass airsim_ros_pkgs::BoolPlusHeader
  :super ros::object
  :slots (_data _header ))

(defmethod airsim_ros_pkgs::BoolPlusHeader
  (:init
   (&key
    ((:data __data) nil)
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _data __data)
   (setq _header __header)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get airsim_ros_pkgs::BoolPlusHeader :md5sum-) "5e0b6c231c50b12e4bb9d26a123fb13c")
(setf (get airsim_ros_pkgs::BoolPlusHeader :datatype-) "airsim_ros_pkgs/BoolPlusHeader")
(setf (get airsim_ros_pkgs::BoolPlusHeader :definition-)
      "bool data
Header header
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :airsim_ros_pkgs/BoolPlusHeader "5e0b6c231c50b12e4bb9d26a123fb13c")


