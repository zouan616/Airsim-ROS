; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-srv)


;//! \htmlinclude get_trajectory-request.msg.html

(cl:defclass <get_trajectory-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (n_pts_per_dir
    :reader n_pts_per_dir
    :initarg :n_pts_per_dir
    :type cl:integer
    :initform 0))
)

(cl:defclass get_trajectory-request (<get_trajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_trajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_trajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<get_trajectory-request> is deprecated: use airsim_ros_pkgs-srv:get_trajectory-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:start-val is deprecated.  Use airsim_ros_pkgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:goal-val is deprecated.  Use airsim_ros_pkgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:twist-val is deprecated.  Use airsim_ros_pkgs-srv:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:acceleration-val is deprecated.  Use airsim_ros_pkgs-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:length-val is deprecated.  Use airsim_ros_pkgs-srv:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:width-val is deprecated.  Use airsim_ros_pkgs-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'n_pts_per_dir-val :lambda-list '(m))
(cl:defmethod n_pts_per_dir-val ((m <get_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:n_pts_per_dir-val is deprecated.  Use airsim_ros_pkgs-srv:n_pts_per_dir instead.")
  (n_pts_per_dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_trajectory-request>) ostream)
  "Serializes a message object of type '<get_trajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n_pts_per_dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_trajectory-request>) istream)
  "Deserializes a message object of type '<get_trajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_pts_per_dir) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_trajectory-request>)))
  "Returns string type for a service object of type '<get_trajectory-request>"
  "airsim_ros_pkgs/get_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_trajectory-request)))
  "Returns string type for a service object of type 'get_trajectory-request"
  "airsim_ros_pkgs/get_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_trajectory-request>)))
  "Returns md5sum for a message object of type '<get_trajectory-request>"
  "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_trajectory-request)))
  "Returns md5sum for a message object of type 'get_trajectory-request"
  "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_trajectory-request>)))
  "Returns full string definition for message of type '<get_trajectory-request>"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point goal~%geometry_msgs/Twist twist~%geometry_msgs/Twist acceleration~%int32 length~%int32 width~%int32 n_pts_per_dir~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_trajectory-request)))
  "Returns full string definition for message of type 'get_trajectory-request"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point goal~%geometry_msgs/Twist twist~%geometry_msgs/Twist acceleration~%int32 length~%int32 width~%int32 n_pts_per_dir~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_trajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_trajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_trajectory-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':n_pts_per_dir (n_pts_per_dir msg))
))
;//! \htmlinclude get_trajectory-response.msg.html

(cl:defclass <get_trajectory-response> (roslisp-msg-protocol:ros-message)
  ((multiDOFtrajectory
    :reader multiDOFtrajectory
    :initarg :multiDOFtrajectory
    :type trajectory_msgs-msg:MultiDOFJointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:MultiDOFJointTrajectory))
   (unknown
    :reader unknown
    :initarg :unknown
    :type cl:integer
    :initform 0)
   (path_found
    :reader path_found
    :initarg :path_found
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_trajectory-response (<get_trajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_trajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_trajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<get_trajectory-response> is deprecated: use airsim_ros_pkgs-srv:get_trajectory-response instead.")))

(cl:ensure-generic-function 'multiDOFtrajectory-val :lambda-list '(m))
(cl:defmethod multiDOFtrajectory-val ((m <get_trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:multiDOFtrajectory-val is deprecated.  Use airsim_ros_pkgs-srv:multiDOFtrajectory instead.")
  (multiDOFtrajectory m))

(cl:ensure-generic-function 'unknown-val :lambda-list '(m))
(cl:defmethod unknown-val ((m <get_trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:unknown-val is deprecated.  Use airsim_ros_pkgs-srv:unknown instead.")
  (unknown m))

(cl:ensure-generic-function 'path_found-val :lambda-list '(m))
(cl:defmethod path_found-val ((m <get_trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:path_found-val is deprecated.  Use airsim_ros_pkgs-srv:path_found instead.")
  (path_found m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_trajectory-response>) ostream)
  "Serializes a message object of type '<get_trajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'multiDOFtrajectory) ostream)
  (cl:let* ((signed (cl:slot-value msg 'unknown)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'path_found) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_trajectory-response>) istream)
  "Deserializes a message object of type '<get_trajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'multiDOFtrajectory) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unknown) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'path_found) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_trajectory-response>)))
  "Returns string type for a service object of type '<get_trajectory-response>"
  "airsim_ros_pkgs/get_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_trajectory-response)))
  "Returns string type for a service object of type 'get_trajectory-response"
  "airsim_ros_pkgs/get_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_trajectory-response>)))
  "Returns md5sum for a message object of type '<get_trajectory-response>"
  "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_trajectory-response)))
  "Returns md5sum for a message object of type 'get_trajectory-response"
  "ed8ffd7350f1fb8be2c61a4c5e0750a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_trajectory-response>)))
  "Returns full string definition for message of type '<get_trajectory-response>"
  (cl:format cl:nil "trajectory_msgs/MultiDOFJointTrajectory multiDOFtrajectory~%int32 unknown~%bool path_found~%~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_trajectory-response)))
  "Returns full string definition for message of type 'get_trajectory-response"
  (cl:format cl:nil "trajectory_msgs/MultiDOFJointTrajectory multiDOFtrajectory~%int32 unknown~%bool path_found~%~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_trajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'multiDOFtrajectory))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_trajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_trajectory-response
    (cl:cons ':multiDOFtrajectory (multiDOFtrajectory msg))
    (cl:cons ':unknown (unknown msg))
    (cl:cons ':path_found (path_found msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_trajectory)))
  'get_trajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_trajectory)))
  'get_trajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_trajectory)))
  "Returns string type for a service object of type '<get_trajectory>"
  "airsim_ros_pkgs/get_trajectory")