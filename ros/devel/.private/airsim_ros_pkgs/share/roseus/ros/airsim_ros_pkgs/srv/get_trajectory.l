;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::get_trajectory)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'get_trajectory (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::GET_TRAJECTORY")
  (make-package "AIRSIM_ROS_PKGS::GET_TRAJECTORY"))
(unless (find-package "AIRSIM_ROS_PKGS::GET_TRAJECTORYREQUEST")
  (make-package "AIRSIM_ROS_PKGS::GET_TRAJECTORYREQUEST"))
(unless (find-package "AIRSIM_ROS_PKGS::GET_TRAJECTORYRESPONSE")
  (make-package "AIRSIM_ROS_PKGS::GET_TRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass airsim_ros_pkgs::get_trajectoryRequest
  :super ros::object
  :slots (_start _goal _twist _acceleration _length _width _n_pts_per_dir ))

(defmethod airsim_ros_pkgs::get_trajectoryRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:goal __goal) (instance geometry_msgs::Point :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    ((:length __length) 0)
    ((:width __width) 0)
    ((:n_pts_per_dir __n_pts_per_dir) 0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   (setq _twist __twist)
   (setq _acceleration __acceleration)
   (setq _length (round __length))
   (setq _width (round __width))
   (setq _n_pts_per_dir (round __n_pts_per_dir))
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
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
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:n_pts_per_dir
   (&optional __n_pts_per_dir)
   (if __n_pts_per_dir (setq _n_pts_per_dir __n_pts_per_dir)) _n_pts_per_dir)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ;; int32 _length
    4
    ;; int32 _width
    4
    ;; int32 _n_pts_per_dir
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;; int32 _length
       (write-long _length s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _n_pts_per_dir
       (write-long _n_pts_per_dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _n_pts_per_dir
     (setq _n_pts_per_dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass airsim_ros_pkgs::get_trajectoryResponse
  :super ros::object
  :slots (_multiDOFtrajectory _unknown _path_found ))

(defmethod airsim_ros_pkgs::get_trajectoryResponse
  (:init
   (&key
    ((:multiDOFtrajectory __multiDOFtrajectory) (instance trajectory_msgs::MultiDOFJointTrajectory :init))
    ((:unknown __unknown) 0)
    ((:path_found __path_found) nil)
    )
   (send-super :init)
   (setq _multiDOFtrajectory __multiDOFtrajectory)
   (setq _unknown (round __unknown))
   (setq _path_found __path_found)
   self)
  (:multiDOFtrajectory
   (&rest __multiDOFtrajectory)
   (if (keywordp (car __multiDOFtrajectory))
       (send* _multiDOFtrajectory __multiDOFtrajectory)
     (progn
       (if __multiDOFtrajectory (setq _multiDOFtrajectory (car __multiDOFtrajectory)))
       _multiDOFtrajectory)))
  (:unknown
   (&optional __unknown)
   (if __unknown (setq _unknown __unknown)) _unknown)
  (:path_found
   (&optional __path_found)
   (if __path_found (setq _path_found __path_found)) _path_found)
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/MultiDOFJointTrajectory _multiDOFtrajectory
    (send _multiDOFtrajectory :serialization-length)
    ;; int32 _unknown
    4
    ;; bool _path_found
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/MultiDOFJointTrajectory _multiDOFtrajectory
       (send _multiDOFtrajectory :serialize s)
     ;; int32 _unknown
       (write-long _unknown s)
     ;; bool _path_found
       (if _path_found (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/MultiDOFJointTrajectory _multiDOFtrajectory
     (send _multiDOFtrajectory :deserialize buf ptr-) (incf ptr- (send _multiDOFtrajectory :serialization-length))
   ;; int32 _unknown
     (setq _unknown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _path_found
     (setq _path_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass airsim_ros_pkgs::get_trajectory
  :super ros::object
  :slots ())

(setf (get airsim_ros_pkgs::get_trajectory :md5sum-) "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(setf (get airsim_ros_pkgs::get_trajectory :datatype-) "airsim_ros_pkgs/get_trajectory")
(setf (get airsim_ros_pkgs::get_trajectory :request) airsim_ros_pkgs::get_trajectoryRequest)
(setf (get airsim_ros_pkgs::get_trajectory :response) airsim_ros_pkgs::get_trajectoryResponse)

(defmethod airsim_ros_pkgs::get_trajectoryRequest
  (:response () (instance airsim_ros_pkgs::get_trajectoryResponse :init)))

(setf (get airsim_ros_pkgs::get_trajectoryRequest :md5sum-) "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(setf (get airsim_ros_pkgs::get_trajectoryRequest :datatype-) "airsim_ros_pkgs/get_trajectoryRequest")
(setf (get airsim_ros_pkgs::get_trajectoryRequest :definition-)
      "geometry_msgs/Point start
geometry_msgs/Point goal
geometry_msgs/Twist twist
geometry_msgs/Twist acceleration
int32 length
int32 width
int32 n_pts_per_dir

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
trajectory_msgs/MultiDOFJointTrajectory multiDOFtrajectory
int32 unknown
bool path_found


================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

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

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")

(setf (get airsim_ros_pkgs::get_trajectoryResponse :md5sum-) "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(setf (get airsim_ros_pkgs::get_trajectoryResponse :datatype-) "airsim_ros_pkgs/get_trajectoryResponse")
(setf (get airsim_ros_pkgs::get_trajectoryResponse :definition-)
      "geometry_msgs/Point start
geometry_msgs/Point goal
geometry_msgs/Twist twist
geometry_msgs/Twist acceleration
int32 length
int32 width
int32 n_pts_per_dir

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
---
trajectory_msgs/MultiDOFJointTrajectory multiDOFtrajectory
int32 unknown
bool path_found


================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

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

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")



(provide :airsim_ros_pkgs/get_trajectory "ed8ffd7350f1fb8be2c61a4c5e0750a5")


