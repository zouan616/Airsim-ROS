;; Auto-generated. Do not edit!


(when (boundp 'airsim_ros_pkgs::start_profiling_srv)
  (if (not (find-package "AIRSIM_ROS_PKGS"))
    (make-package "AIRSIM_ROS_PKGS"))
  (shadow 'start_profiling_srv (find-package "AIRSIM_ROS_PKGS")))
(unless (find-package "AIRSIM_ROS_PKGS::START_PROFILING_SRV")
  (make-package "AIRSIM_ROS_PKGS::START_PROFILING_SRV"))
(unless (find-package "AIRSIM_ROS_PKGS::START_PROFILING_SRVREQUEST")
  (make-package "AIRSIM_ROS_PKGS::START_PROFILING_SRVREQUEST"))
(unless (find-package "AIRSIM_ROS_PKGS::START_PROFILING_SRVRESPONSE")
  (make-package "AIRSIM_ROS_PKGS::START_PROFILING_SRVRESPONSE"))

(in-package "ROS")





(defclass airsim_ros_pkgs::start_profiling_srvRequest
  :super ros::object
  :slots (_key ))

(defmethod airsim_ros_pkgs::start_profiling_srvRequest
  (:init
   (&key
    ((:key __key) "")
    )
   (send-super :init)
   (setq _key (string __key))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass airsim_ros_pkgs::start_profiling_srvResponse
  :super ros::object
  :slots (_start ))

(defmethod airsim_ros_pkgs::start_profiling_srvResponse
  (:init
   (&key
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass airsim_ros_pkgs::start_profiling_srv
  :super ros::object
  :slots ())

(setf (get airsim_ros_pkgs::start_profiling_srv :md5sum-) "6f48eadf0b889cd9025e1acbb320fba2")
(setf (get airsim_ros_pkgs::start_profiling_srv :datatype-) "airsim_ros_pkgs/start_profiling_srv")
(setf (get airsim_ros_pkgs::start_profiling_srv :request) airsim_ros_pkgs::start_profiling_srvRequest)
(setf (get airsim_ros_pkgs::start_profiling_srv :response) airsim_ros_pkgs::start_profiling_srvResponse)

(defmethod airsim_ros_pkgs::start_profiling_srvRequest
  (:response () (instance airsim_ros_pkgs::start_profiling_srvResponse :init)))

(setf (get airsim_ros_pkgs::start_profiling_srvRequest :md5sum-) "6f48eadf0b889cd9025e1acbb320fba2")
(setf (get airsim_ros_pkgs::start_profiling_srvRequest :datatype-) "airsim_ros_pkgs/start_profiling_srvRequest")
(setf (get airsim_ros_pkgs::start_profiling_srvRequest :definition-)
      "string key
---
bool start
")

(setf (get airsim_ros_pkgs::start_profiling_srvResponse :md5sum-) "6f48eadf0b889cd9025e1acbb320fba2")
(setf (get airsim_ros_pkgs::start_profiling_srvResponse :datatype-) "airsim_ros_pkgs/start_profiling_srvResponse")
(setf (get airsim_ros_pkgs::start_profiling_srvResponse :definition-)
      "string key
---
bool start
")



(provide :airsim_ros_pkgs/start_profiling_srv "6f48eadf0b889cd9025e1acbb320fba2")


