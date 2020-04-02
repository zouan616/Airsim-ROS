;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::follow_trajectory_status_srv)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'follow_trajectory_status_srv (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRV")
  (make-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRV"))
(unless (find-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRVREQUEST")
  (make-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRVREQUEST"))
(unless (find-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRVRESPONSE")
  (make-package "AIRSIM_ROS_PKGS::FOLLOW_TRAJECTORY_STATUS_SRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass airsim_ros_pkgs::follow_trajectory_status_srvRequest
  :super ros::object
  :slots ())

(defmethod airsim_ros_pkgs::follow_trajectory_status_srvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass airsim_ros_pkgs::follow_trajectory_status_srvResponse
  :super ros::object
  :slots (_twist _acceleration _success ))

(defmethod airsim_ros_pkgs::follow_trajectory_status_srvResponse
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    ((:success __success) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _acceleration __acceleration)
   (setq _success __success)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:success
   (&rest __success)
   (if (keywordp (car __success))
       (send* _success __success)
     (progn
       (if __success (setq _success (car __success)))
       _success)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ;; std_msgs/Bool _success
    (send _success :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;; std_msgs/Bool _success
       (send _success :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; std_msgs/Bool _success
     (send _success :deserialize buf ptr-) (incf ptr- (send _success :serialization-length))
   ;;
   self)
  )

(defclass airsim_ros_pkgs::follow_trajectory_status_srv
  :super ros::object
  :slots ())

(setf (get airsim_ros_pkgs::follow_trajectory_status_srv :md5sum-) "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srv :datatype-) "airsim_ros_pkgs/follow_trajectory_status_srv")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srv :request) airsim_ros_pkgs::follow_trajectory_status_srvRequest)
(setf (get airsim_ros_pkgs::follow_trajectory_status_srv :response) airsim_ros_pkgs::follow_trajectory_status_srvResponse)

(defmethod airsim_ros_pkgs::follow_trajectory_status_srvRequest
  (:response () (instance airsim_ros_pkgs::follow_trajectory_status_srvResponse :init)))

(setf (get airsim_ros_pkgs::follow_trajectory_status_srvRequest :md5sum-) "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srvRequest :datatype-) "airsim_ros_pkgs/follow_trajectory_status_srvRequest")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srvRequest :definition-)
      "---
geometry_msgs/Twist twist
geometry_msgs/Twist acceleration
std_msgs/Bool success


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Bool
")

(setf (get airsim_ros_pkgs::follow_trajectory_status_srvResponse :md5sum-) "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srvResponse :datatype-) "airsim_ros_pkgs/follow_trajectory_status_srvResponse")
(setf (get airsim_ros_pkgs::follow_trajectory_status_srvResponse :definition-)
      "---
geometry_msgs/Twist twist
geometry_msgs/Twist acceleration
std_msgs/Bool success


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Bool
")



(provide :airsim_ros_pkgs/follow_trajectory_status_srv "d5ee448f3498f4b7aa7e8f53cb7a5b1c")


