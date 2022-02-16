// Auto-generated. Do not edit!

// (in-package question4.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JointPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first = null;
      this.second = null;
      this.third = null;
      this.fourth = null;
    }
    else {
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0.0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
      if (initObj.hasOwnProperty('third')) {
        this.third = initObj.third
      }
      else {
        this.third = 0.0;
      }
      if (initObj.hasOwnProperty('fourth')) {
        this.fourth = initObj.fourth
      }
      else {
        this.fourth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointPositionRequest
    // Serialize message field [first]
    bufferOffset = _serializer.float64(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.float64(obj.second, buffer, bufferOffset);
    // Serialize message field [third]
    bufferOffset = _serializer.float64(obj.third, buffer, bufferOffset);
    // Serialize message field [fourth]
    bufferOffset = _serializer.float64(obj.fourth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointPositionRequest
    let len;
    let data = new JointPositionRequest(null);
    // Deserialize message field [first]
    data.first = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [third]
    data.third = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fourth]
    data.fourth = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'question4/JointPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a535115e63a8d55f9b2d3b373b8ddaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 first
    float64 second
    float64 third
    float64 fourth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointPositionRequest(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0.0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    if (msg.third !== undefined) {
      resolved.third = msg.third;
    }
    else {
      resolved.third = 0.0
    }

    if (msg.fourth !== undefined) {
      resolved.fourth = msg.fourth;
    }
    else {
      resolved.fourth = 0.0
    }

    return resolved;
    }
};

class JointPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointPositionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointPositionResponse
    let len;
    let data = new JointPositionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'question4/JointPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointPositionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: JointPositionRequest,
  Response: JointPositionResponse,
  md5sum() { return '2a535115e63a8d55f9b2d3b373b8ddaa'; },
  datatype() { return 'question4/JointPosition'; }
};
