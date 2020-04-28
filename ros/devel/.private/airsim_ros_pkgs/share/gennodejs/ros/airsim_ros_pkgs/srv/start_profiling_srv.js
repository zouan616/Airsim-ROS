// Auto-generated. Do not edit!

// (in-package airsim_ros_pkgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class start_profiling_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_profiling_srvRequest
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_profiling_srvRequest
    let len;
    let data = new start_profiling_srvRequest(null);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/start_profiling_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0e6b82860d1fefbdaa2c52c0b6f712e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_profiling_srvRequest(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    return resolved;
    }
};

class start_profiling_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_profiling_srvResponse
    // Serialize message field [start]
    bufferOffset = _serializer.bool(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_profiling_srvResponse
    let len;
    let data = new start_profiling_srvResponse(null);
    // Deserialize message field [start]
    data.start = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/start_profiling_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '676aa7bfb3ec2071e814f2368dfd5fb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_profiling_srvResponse(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = false
    }

    return resolved;
    }
};

module.exports = {
  Request: start_profiling_srvRequest,
  Response: start_profiling_srvResponse,
  md5sum() { return '6f48eadf0b889cd9025e1acbb320fba2'; },
  datatype() { return 'airsim_ros_pkgs/start_profiling_srv'; }
};
