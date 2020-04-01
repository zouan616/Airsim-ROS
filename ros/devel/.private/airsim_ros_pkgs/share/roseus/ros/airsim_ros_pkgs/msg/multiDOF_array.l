;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::multiDOF_array)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'multiDOF_array (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::MULTIDOF_ARRAY")
  (make-package "AIRSIM_ROS_PKGS::MULTIDOF_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude multiDOF_array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass airsim_ros_pkgs::multiDOF_array
  :super ros::object
  :slots (_points _header ))

(defmethod airsim_ros_pkgs::multiDOF_array
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance airsim_ros_pkgs::multiDOF :init) r)) r))
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _header __header)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
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
    ;; airsim_ros_pkgs/multiDOF[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; airsim_ros_pkgs/multiDOF[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; airsim_ros_pkgs/multiDOF[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance airsim_ros_pkgs::multiDOF :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get airsim_ros_pkgs::multiDOF_array :md5sum-) "46f0390774f0861beff7c17c9f478a6b")
(setf (get airsim_ros_pkgs::multiDOF_array :datatype-) "airsim_ros_pkgs/multiDOF_array")
(setf (get airsim_ros_pkgs::multiDOF_array :definition-)
      "multiDOF[] points
Header header
================================================================================
MSG: airsim_ros_pkgs/multiDOF
float64 x
float64 y
float64 z
float64 vx
float64 vy
float64 vz
float64 ax
float64 ay
float64 az
float64 yaw
float64 duration
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



(provide :airsim_ros_pkgs/multiDOF_array "46f0390774f0861beff7c17c9f478a6b")


