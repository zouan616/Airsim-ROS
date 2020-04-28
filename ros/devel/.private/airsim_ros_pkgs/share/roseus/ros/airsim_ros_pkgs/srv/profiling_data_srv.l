;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::profiling_data_srv)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'profiling_data_srv (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRV")
  (make-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRV"))
(unless (find-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRVREQUEST")
  (make-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRVREQUEST"))
(unless (find-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRVRESPONSE")
  (make-package "AIRSIM_ROS_PKGS::PROFILING_DATA_SRVRESPONSE"))

(in-package "ROS")





(defclass airsim_ros_pkgs::profiling_data_srvRequest
  :super ros::object
  :slots (_key _value ))

(defmethod airsim_ros_pkgs::profiling_data_srvRequest
  (:init
   (&key
    ((:key __key) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _value (float __value))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass airsim_ros_pkgs::profiling_data_srvResponse
  :super ros::object
  :slots (_acquired ))

(defmethod airsim_ros_pkgs::profiling_data_srvResponse
  (:init
   (&key
    ((:acquired __acquired) nil)
    )
   (send-super :init)
   (setq _acquired __acquired)
   self)
  (:acquired
   (&optional __acquired)
   (if __acquired (setq _acquired __acquired)) _acquired)
  (:serialization-length
   ()
   (+
    ;; bool _acquired
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _acquired
       (if _acquired (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _acquired
     (setq _acquired (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass airsim_ros_pkgs::profiling_data_srv
  :super ros::object
  :slots ())

(setf (get airsim_ros_pkgs::profiling_data_srv :md5sum-) "279b837f5c54123a153e0d14cf04fb5f")
(setf (get airsim_ros_pkgs::profiling_data_srv :datatype-) "airsim_ros_pkgs/profiling_data_srv")
(setf (get airsim_ros_pkgs::profiling_data_srv :request) airsim_ros_pkgs::profiling_data_srvRequest)
(setf (get airsim_ros_pkgs::profiling_data_srv :response) airsim_ros_pkgs::profiling_data_srvResponse)

(defmethod airsim_ros_pkgs::profiling_data_srvRequest
  (:response () (instance airsim_ros_pkgs::profiling_data_srvResponse :init)))

(setf (get airsim_ros_pkgs::profiling_data_srvRequest :md5sum-) "279b837f5c54123a153e0d14cf04fb5f")
(setf (get airsim_ros_pkgs::profiling_data_srvRequest :datatype-) "airsim_ros_pkgs/profiling_data_srvRequest")
(setf (get airsim_ros_pkgs::profiling_data_srvRequest :definition-)
      "string key
float64 value
---
bool acquired
")

(setf (get airsim_ros_pkgs::profiling_data_srvResponse :md5sum-) "279b837f5c54123a153e0d14cf04fb5f")
(setf (get airsim_ros_pkgs::profiling_data_srvResponse :datatype-) "airsim_ros_pkgs/profiling_data_srvResponse")
(setf (get airsim_ros_pkgs::profiling_data_srvResponse :definition-)
      "string key
float64 value
---
bool acquired
")



(provide :airsim_ros_pkgs/profiling_data_srv "279b837f5c54123a153e0d14cf04fb5f")


