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

class profiling_data_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type profiling_data_srvRequest
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type profiling_data_srvRequest
    let len;
    let data = new profiling_data_srvRequest(null);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/profiling_data_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a681f679e1c39fbe570b7737e7cf183d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string key
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new profiling_data_srvRequest(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

class profiling_data_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acquired = null;
    }
    else {
      if (initObj.hasOwnProperty('acquired')) {
        this.acquired = initObj.acquired
      }
      else {
        this.acquired = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type profiling_data_srvResponse
    // Serialize message field [acquired]
    bufferOffset = _serializer.bool(obj.acquired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type profiling_data_srvResponse
    let len;
    let data = new profiling_data_srvResponse(null);
    // Deserialize message field [acquired]
    data.acquired = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'airsim_ros_pkgs/profiling_data_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f73f9cb8c9863516d21fc4f714b22191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool acquired
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new profiling_data_srvResponse(null);
    if (msg.acquired !== undefined) {
      resolved.acquired = msg.acquired;
    }
    else {
      resolved.acquired = false
    }

    return resolved;
    }
};

module.exports = {
  Request: profiling_data_srvRequest,
  Response: profiling_data_srvResponse,
  md5sum() { return '279b837f5c54123a153e0d14cf04fb5f'; },
  datatype() { return 'airsim_ros_pkgs/profiling_data_srv'; }
};
