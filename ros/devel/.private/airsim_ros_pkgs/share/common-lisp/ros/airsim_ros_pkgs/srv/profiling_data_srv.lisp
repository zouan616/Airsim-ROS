; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-srv)


;//! \htmlinclude profiling_data_srv-request.msg.html

(cl:defclass <profiling_data_srv-request> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass profiling_data_srv-request (<profiling_data_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <profiling_data_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'profiling_data_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<profiling_data_srv-request> is deprecated: use airsim_ros_pkgs-srv:profiling_data_srv-request instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <profiling_data_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:key-val is deprecated.  Use airsim_ros_pkgs-srv:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <profiling_data_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:value-val is deprecated.  Use airsim_ros_pkgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <profiling_data_srv-request>) ostream)
  "Serializes a message object of type '<profiling_data_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <profiling_data_srv-request>) istream)
  "Deserializes a message object of type '<profiling_data_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<profiling_data_srv-request>)))
  "Returns string type for a service object of type '<profiling_data_srv-request>"
  "airsim_ros_pkgs/profiling_data_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'profiling_data_srv-request)))
  "Returns string type for a service object of type 'profiling_data_srv-request"
  "airsim_ros_pkgs/profiling_data_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<profiling_data_srv-request>)))
  "Returns md5sum for a message object of type '<profiling_data_srv-request>"
  "279b837f5c54123a153e0d14cf04fb5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'profiling_data_srv-request)))
  "Returns md5sum for a message object of type 'profiling_data_srv-request"
  "279b837f5c54123a153e0d14cf04fb5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<profiling_data_srv-request>)))
  "Returns full string definition for message of type '<profiling_data_srv-request>"
  (cl:format cl:nil "string key~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'profiling_data_srv-request)))
  "Returns full string definition for message of type 'profiling_data_srv-request"
  (cl:format cl:nil "string key~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <profiling_data_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <profiling_data_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'profiling_data_srv-request
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude profiling_data_srv-response.msg.html

(cl:defclass <profiling_data_srv-response> (roslisp-msg-protocol:ros-message)
  ((acquired
    :reader acquired
    :initarg :acquired
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass profiling_data_srv-response (<profiling_data_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <profiling_data_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'profiling_data_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<profiling_data_srv-response> is deprecated: use airsim_ros_pkgs-srv:profiling_data_srv-response instead.")))

(cl:ensure-generic-function 'acquired-val :lambda-list '(m))
(cl:defmethod acquired-val ((m <profiling_data_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:acquired-val is deprecated.  Use airsim_ros_pkgs-srv:acquired instead.")
  (acquired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <profiling_data_srv-response>) ostream)
  "Serializes a message object of type '<profiling_data_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acquired) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <profiling_data_srv-response>) istream)
  "Deserializes a message object of type '<profiling_data_srv-response>"
    (cl:setf (cl:slot-value msg 'acquired) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<profiling_data_srv-response>)))
  "Returns string type for a service object of type '<profiling_data_srv-response>"
  "airsim_ros_pkgs/profiling_data_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'profiling_data_srv-response)))
  "Returns string type for a service object of type 'profiling_data_srv-response"
  "airsim_ros_pkgs/profiling_data_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<profiling_data_srv-response>)))
  "Returns md5sum for a message object of type '<profiling_data_srv-response>"
  "279b837f5c54123a153e0d14cf04fb5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'profiling_data_srv-response)))
  "Returns md5sum for a message object of type 'profiling_data_srv-response"
  "279b837f5c54123a153e0d14cf04fb5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<profiling_data_srv-response>)))
  "Returns full string definition for message of type '<profiling_data_srv-response>"
  (cl:format cl:nil "bool acquired~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'profiling_data_srv-response)))
  "Returns full string definition for message of type 'profiling_data_srv-response"
  (cl:format cl:nil "bool acquired~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <profiling_data_srv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <profiling_data_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'profiling_data_srv-response
    (cl:cons ':acquired (acquired msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'profiling_data_srv)))
  'profiling_data_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'profiling_data_srv)))
  'profiling_data_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'profiling_data_srv)))
  "Returns string type for a service object of type '<profiling_data_srv>"
  "airsim_ros_pkgs/profiling_data_srv")