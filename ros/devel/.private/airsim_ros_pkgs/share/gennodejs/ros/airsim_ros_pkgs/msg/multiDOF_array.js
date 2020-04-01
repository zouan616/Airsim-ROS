// Auto-generated. Do not edit!

// (in-package airsim_ros_pkgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let multiDOF = require('./multiDOF.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class multiDOF_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type multiDOF_array
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = multiDOF.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type multiDOF_array
    let len;
    let data = new multiDOF_array(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = multiDOF.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 88 * object.points.length;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'airsim_ros_pkgs/multiDOF_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46f0390774f0861beff7c17c9f478a6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    multiDOF[] points
    Header header
    ================================================================================
    MSG: airsim_ros_pkgs/multiDOF
    float64 x
    float64 y
    float64 z
    float64 vx
    float64 vy
    float64 vz
    float64 ax
    float64 ay
    float64 az
    float64 yaw
    float64 duration
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new multiDOF_array(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = multiDOF.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    return resolved;
    }
};

module.exports = multiDOF_array;
