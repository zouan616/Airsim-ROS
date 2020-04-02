; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-srv)


;//! \htmlinclude follow_trajectory_status_srv-request.msg.html

(cl:defclass <follow_trajectory_status_srv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass follow_trajectory_status_srv-request (<follow_trajectory_status_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <follow_trajectory_status_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'follow_trajectory_status_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<follow_trajectory_status_srv-request> is deprecated: use airsim_ros_pkgs-srv:follow_trajectory_status_srv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <follow_trajectory_status_srv-request>) ostream)
  "Serializes a message object of type '<follow_trajectory_status_srv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <follow_trajectory_status_srv-request>) istream)
  "Deserializes a message object of type '<follow_trajectory_status_srv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<follow_trajectory_status_srv-request>)))
  "Returns string type for a service object of type '<follow_trajectory_status_srv-request>"
  "airsim_ros_pkgs/follow_trajectory_status_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_trajectory_status_srv-request)))
  "Returns string type for a service object of type 'follow_trajectory_status_srv-request"
  "airsim_ros_pkgs/follow_trajectory_status_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<follow_trajectory_status_srv-request>)))
  "Returns md5sum for a message object of type '<follow_trajectory_status_srv-request>"
  "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'follow_trajectory_status_srv-request)))
  "Returns md5sum for a message object of type 'follow_trajectory_status_srv-request"
  "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<follow_trajectory_status_srv-request>)))
  "Returns full string definition for message of type '<follow_trajectory_status_srv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'follow_trajectory_status_srv-request)))
  "Returns full string definition for message of type 'follow_trajectory_status_srv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <follow_trajectory_status_srv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <follow_trajectory_status_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'follow_trajectory_status_srv-request
))
;//! \htmlinclude follow_trajectory_status_srv-response.msg.html

(cl:defclass <follow_trajectory_status_srv-response> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass follow_trajectory_status_srv-response (<follow_trajectory_status_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <follow_trajectory_status_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'follow_trajectory_status_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<follow_trajectory_status_srv-response> is deprecated: use airsim_ros_pkgs-srv:follow_trajectory_status_srv-response instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <follow_trajectory_status_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:twist-val is deprecated.  Use airsim_ros_pkgs-srv:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <follow_trajectory_status_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:acceleration-val is deprecated.  Use airsim_ros_pkgs-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <follow_trajectory_status_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:success-val is deprecated.  Use airsim_ros_pkgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <follow_trajectory_status_srv-response>) ostream)
  "Serializes a message object of type '<follow_trajectory_status_srv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <follow_trajectory_status_srv-response>) istream)
  "Deserializes a message object of type '<follow_trajectory_status_srv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<follow_trajectory_status_srv-response>)))
  "Returns string type for a service object of type '<follow_trajectory_status_srv-response>"
  "airsim_ros_pkgs/follow_trajectory_status_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_trajectory_status_srv-response)))
  "Returns string type for a service object of type 'follow_trajectory_status_srv-response"
  "airsim_ros_pkgs/follow_trajectory_status_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<follow_trajectory_status_srv-response>)))
  "Returns md5sum for a message object of type '<follow_trajectory_status_srv-response>"
  "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'follow_trajectory_status_srv-response)))
  "Returns md5sum for a message object of type 'follow_trajectory_status_srv-response"
  "d5ee448f3498f4b7aa7e8f53cb7a5b1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<follow_trajectory_status_srv-response>)))
  "Returns full string definition for message of type '<follow_trajectory_status_srv-response>"
  (cl:format cl:nil "geometry_msgs/Twist twist~%geometry_msgs/Twist acceleration~%std_msgs/Bool success~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'follow_trajectory_status_srv-response)))
  "Returns full string definition for message of type 'follow_trajectory_status_srv-response"
  (cl:format cl:nil "geometry_msgs/Twist twist~%geometry_msgs/Twist acceleration~%std_msgs/Bool success~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <follow_trajectory_status_srv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <follow_trajectory_status_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'follow_trajectory_status_srv-response
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'follow_trajectory_status_srv)))
  'follow_trajectory_status_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'follow_trajectory_status_srv)))
  'follow_trajectory_status_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_trajectory_status_srv)))
  "Returns string type for a service object of type '<follow_trajectory_status_srv>"
  "airsim_ros_pkgs/follow_trajectory_status_srv")