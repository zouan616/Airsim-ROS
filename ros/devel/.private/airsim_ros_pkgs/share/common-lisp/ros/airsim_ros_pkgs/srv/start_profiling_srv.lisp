; Auto-generated. Do not edit!


(cl:in-package airsim_ros_pkgs-srv)


;//! \htmlinclude start_profiling_srv-request.msg.html

(cl:defclass <start_profiling_srv-request> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass start_profiling_srv-request (<start_profiling_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_profiling_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_profiling_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<start_profiling_srv-request> is deprecated: use airsim_ros_pkgs-srv:start_profiling_srv-request instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <start_profiling_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:key-val is deprecated.  Use airsim_ros_pkgs-srv:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_profiling_srv-request>) ostream)
  "Serializes a message object of type '<start_profiling_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_profiling_srv-request>) istream)
  "Deserializes a message object of type '<start_profiling_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_profiling_srv-request>)))
  "Returns string type for a service object of type '<start_profiling_srv-request>"
  "airsim_ros_pkgs/start_profiling_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_profiling_srv-request)))
  "Returns string type for a service object of type 'start_profiling_srv-request"
  "airsim_ros_pkgs/start_profiling_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_profiling_srv-request>)))
  "Returns md5sum for a message object of type '<start_profiling_srv-request>"
  "6f48eadf0b889cd9025e1acbb320fba2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_profiling_srv-request)))
  "Returns md5sum for a message object of type 'start_profiling_srv-request"
  "6f48eadf0b889cd9025e1acbb320fba2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_profiling_srv-request>)))
  "Returns full string definition for message of type '<start_profiling_srv-request>"
  (cl:format cl:nil "string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_profiling_srv-request)))
  "Returns full string definition for message of type 'start_profiling_srv-request"
  (cl:format cl:nil "string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_profiling_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_profiling_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_profiling_srv-request
    (cl:cons ':key (key msg))
))
;//! \htmlinclude start_profiling_srv-response.msg.html

(cl:defclass <start_profiling_srv-response> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_profiling_srv-response (<start_profiling_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_profiling_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_profiling_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name airsim_ros_pkgs-srv:<start_profiling_srv-response> is deprecated: use airsim_ros_pkgs-srv:start_profiling_srv-response instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <start_profiling_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader airsim_ros_pkgs-srv:start-val is deprecated.  Use airsim_ros_pkgs-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_profiling_srv-response>) ostream)
  "Serializes a message object of type '<start_profiling_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_profiling_srv-response>) istream)
  "Deserializes a message object of type '<start_profiling_srv-response>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_profiling_srv-response>)))
  "Returns string type for a service object of type '<start_profiling_srv-response>"
  "airsim_ros_pkgs/start_profiling_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_profiling_srv-response)))
  "Returns string type for a service object of type 'start_profiling_srv-response"
  "airsim_ros_pkgs/start_profiling_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_profiling_srv-response>)))
  "Returns md5sum for a message object of type '<start_profiling_srv-response>"
  "6f48eadf0b889cd9025e1acbb320fba2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_profiling_srv-response)))
  "Returns md5sum for a message object of type 'start_profiling_srv-response"
  "6f48eadf0b889cd9025e1acbb320fba2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_profiling_srv-response>)))
  "Returns full string definition for message of type '<start_profiling_srv-response>"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_profiling_srv-response)))
  "Returns full string definition for message of type 'start_profiling_srv-response"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_profiling_srv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_profiling_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_profiling_srv-response
    (cl:cons ':start (start msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_profiling_srv)))
  'start_profiling_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_profiling_srv)))
  'start_profiling_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_profiling_srv)))
  "Returns string type for a service object of type '<start_profiling_srv>"
  "airsim_ros_pkgs/start_profiling_srv")