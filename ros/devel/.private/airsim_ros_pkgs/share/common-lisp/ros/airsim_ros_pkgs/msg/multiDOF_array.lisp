; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-msg)


;//! \htmlinclude multiDOF_array.msg.html

(cl:defclass <multiDOF_array> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector airsim_ros_pkgs-msg:multiDOF)
   :initform (cl:make-array 0 :element-type 'airsim_ros_pkgs-msg:multiDOF :initial-element (cl:make-instance 'airsim_ros_pkgs-msg:multiDOF)))
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass multiDOF_array (<multiDOF_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multiDOF_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multiDOF_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-msg:<multiDOF_array> is deprecated: use airsim_ros_pkgs-msg:multiDOF_array instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <multiDOF_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-msg:points-val is deprecated.  Use airsim_ros_pkgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <multiDOF_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-msg:header-val is deprecated.  Use airsim_ros_pkgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multiDOF_array>) ostream)
  "Serializes a message object of type '<multiDOF_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multiDOF_array>) istream)
  "Deserializes a message object of type '<multiDOF_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'airsim_ros_pkgs-msg:multiDOF))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multiDOF_array>)))
  "Returns string type for a message object of type '<multiDOF_array>"
  "airsim_ros_pkgs/multiDOF_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiDOF_array)))
  "Returns string type for a message object of type 'multiDOF_array"
  "airsim_ros_pkgs/multiDOF_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multiDOF_array>)))
  "Returns md5sum for a message object of type '<multiDOF_array>"
  "46f0390774f0861beff7c17c9f478a6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multiDOF_array)))
  "Returns md5sum for a message object of type 'multiDOF_array"
  "46f0390774f0861beff7c17c9f478a6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multiDOF_array>)))
  "Returns full string definition for message of type '<multiDOF_array>"
  (cl:format cl:nil "multiDOF[] points~%Header header~%================================================================================~%MSG: airsim_ros_pkgs/multiDOF~%float64 x~%float64 y~%float64 z~%float64 vx~%float64 vy~%float64 vz~%float64 ax~%float64 ay~%float64 az~%float64 yaw~%float64 duration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multiDOF_array)))
  "Returns full string definition for message of type 'multiDOF_array"
  (cl:format cl:nil "multiDOF[] points~%Header header~%================================================================================~%MSG: airsim_ros_pkgs/multiDOF~%float64 x~%float64 y~%float64 z~%float64 vx~%float64 vy~%float64 vz~%float64 ax~%float64 ay~%float64 az~%float64 yaw~%float64 duration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multiDOF_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multiDOF_array>))
  "Converts a ROS message object to a list"
  (cl:list 'multiDOF_array
    (cl:cons ':points (points msg))
    (cl:cons ':header (header msg))
))
