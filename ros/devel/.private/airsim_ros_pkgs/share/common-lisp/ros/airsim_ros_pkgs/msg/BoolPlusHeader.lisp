; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-msg)


;//! \htmlinclude BoolPlusHeader.msg.html

(cl:defclass <BoolPlusHeader> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass BoolPlusHeader (<BoolPlusHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolPlusHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolPlusHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-msg:<BoolPlusHeader> is deprecated: use airsim_ros_pkgs-msg:BoolPlusHeader instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <BoolPlusHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-msg:data-val is deprecated.  Use airsim_ros_pkgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BoolPlusHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-msg:header-val is deprecated.  Use airsim_ros_pkgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolPlusHeader>) ostream)
  "Serializes a message object of type '<BoolPlusHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolPlusHeader>) istream)
  "Deserializes a message object of type '<BoolPlusHeader>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolPlusHeader>)))
  "Returns string type for a message object of type '<BoolPlusHeader>"
  "airsim_ros_pkgs/BoolPlusHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolPlusHeader)))
  "Returns string type for a message object of type 'BoolPlusHeader"
  "airsim_ros_pkgs/BoolPlusHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolPlusHeader>)))
  "Returns md5sum for a message object of type '<BoolPlusHeader>"
  "5e0b6c231c50b12e4bb9d26a123fb13c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolPlusHeader)))
  "Returns md5sum for a message object of type 'BoolPlusHeader"
  "5e0b6c231c50b12e4bb9d26a123fb13c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolPlusHeader>)))
  "Returns full string definition for message of type '<BoolPlusHeader>"
  (cl:format cl:nil "bool data~%Header header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolPlusHeader)))
  "Returns full string definition for message of type 'BoolPlusHeader"
  (cl:format cl:nil "bool data~%Header header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolPlusHeader>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolPlusHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolPlusHeader
    (cl:cons ':data (data msg))
    (cl:cons ':header (header msg))
))
