// Auto-generated. Do not edit!

// (in-package airsim_ros_pkgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class get_trajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.goal = null;
      this.twist = null;
      this.acceleration = null;
      this.length = null;
      this.width = null;
      this.n_pts_per_dir = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('n_pts_per_dir')) {
        this.n_pts_per_dir = initObj.n_pts_per_dir
      }
      else {
        this.n_pts_per_dir = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_trajectoryRequest
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.int32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [n_pts_per_dir]
    bufferOffset = _serializer.int32(obj.n_pts_per_dir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_trajectoryRequest
    let len;
    let data = new get_trajectoryRequest(null);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [n_pts_per_dir]
    data.n_pts_per_dir = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 156;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/get_trajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc5551f38ef9e3d9d3f15c53146267ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point start
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_trajectoryRequest(null);
    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Point.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Point()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Point.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Point()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Twist.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Twist()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.n_pts_per_dir !== undefined) {
      resolved.n_pts_per_dir = msg.n_pts_per_dir;
    }
    else {
      resolved.n_pts_per_dir = 0
    }

    return resolved;
    }
};

class get_trajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multiDOFtrajectory = null;
      this.unknown = null;
      this.path_found = null;
    }
    else {
      if (initObj.hasOwnProperty('multiDOFtrajectory')) {
        this.multiDOFtrajectory = initObj.multiDOFtrajectory
      }
      else {
        this.multiDOFtrajectory = new trajectory_msgs.msg.MultiDOFJointTrajectory();
      }
      if (initObj.hasOwnProperty('unknown')) {
        this.unknown = initObj.unknown
      }
      else {
        this.unknown = 0;
      }
      if (initObj.hasOwnProperty('path_found')) {
        this.path_found = initObj.path_found
      }
      else {
        this.path_found = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_trajectoryResponse
    // Serialize message field [multiDOFtrajectory]
    bufferOffset = trajectory_msgs.msg.MultiDOFJointTrajectory.serialize(obj.multiDOFtrajectory, buffer, bufferOffset);
    // Serialize message field [unknown]
    bufferOffset = _serializer.int32(obj.unknown, buffer, bufferOffset);
    // Serialize message field [path_found]
    bufferOffset = _serializer.bool(obj.path_found, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_trajectoryResponse
    let len;
    let data = new get_trajectoryResponse(null);
    // Deserialize message field [multiDOFtrajectory]
    data.multiDOFtrajectory = trajectory_msgs.msg.MultiDOFJointTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [unknown]
    data.unknown = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path_found]
    data.path_found = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += trajectory_msgs.msg.MultiDOFJointTrajectory.getMessageSize(object.multiDOFtrajectory);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/get_trajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dc9a84d7a0856e9c53a4c3511791aba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_trajectoryResponse(null);
    if (msg.multiDOFtrajectory !== undefined) {
      resolved.multiDOFtrajectory = trajectory_msgs.msg.MultiDOFJointTrajectory.Resolve(msg.multiDOFtrajectory)
    }
    else {
      resolved.multiDOFtrajectory = new trajectory_msgs.msg.MultiDOFJointTrajectory()
    }

    if (msg.unknown !== undefined) {
      resolved.unknown = msg.unknown;
    }
    else {
      resolved.unknown = 0
    }

    if (msg.path_found !== undefined) {
      resolved.path_found = msg.path_found;
    }
    else {
      resolved.path_found = false
    }

    return resolved;
    }
};

module.exports = {
  Request: get_trajectoryRequest,
  Response: get_trajectoryResponse,
  md5sum() { return 'ed8ffd7350f1fb8be2c61a4c5e0750a5'; },
  datatype() { return 'airsim_ros_pkgs/get_trajectory'; }
};
