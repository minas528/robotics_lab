// Auto-generated. Do not edit!

// (in-package assignment1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class NewPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.alpha = null;
      this.beta = null;
      this.gamma = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewPositionRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float64(obj.alpha, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.float64(obj.beta, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float64(obj.gamma, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float64(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPositionRequest
    let len;
    let data = new NewPositionRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment1/NewPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbb3b0853c8194dddb18bcffc87e9561';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 alpha
    float64 beta
    float64 gamma
    float64 d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewPositionRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    return resolved;
    }
};

class NewPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xnew = null;
      this.ynew = null;
      this.znew = null;
    }
    else {
      if (initObj.hasOwnProperty('xnew')) {
        this.xnew = initObj.xnew
      }
      else {
        this.xnew = 0.0;
      }
      if (initObj.hasOwnProperty('ynew')) {
        this.ynew = initObj.ynew
      }
      else {
        this.ynew = 0.0;
      }
      if (initObj.hasOwnProperty('znew')) {
        this.znew = initObj.znew
      }
      else {
        this.znew = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewPositionResponse
    // Serialize message field [xnew]
    bufferOffset = _serializer.float64(obj.xnew, buffer, bufferOffset);
    // Serialize message field [ynew]
    bufferOffset = _serializer.float64(obj.ynew, buffer, bufferOffset);
    // Serialize message field [znew]
    bufferOffset = _serializer.float64(obj.znew, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewPositionResponse
    let len;
    let data = new NewPositionResponse(null);
    // Deserialize message field [xnew]
    data.xnew = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ynew]
    data.ynew = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [znew]
    data.znew = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment1/NewPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68545952d6a542e06cf4f426fbd45143';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xnew
    float64 ynew
    float64 znew
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewPositionResponse(null);
    if (msg.xnew !== undefined) {
      resolved.xnew = msg.xnew;
    }
    else {
      resolved.xnew = 0.0
    }

    if (msg.ynew !== undefined) {
      resolved.ynew = msg.ynew;
    }
    else {
      resolved.ynew = 0.0
    }

    if (msg.znew !== undefined) {
      resolved.znew = msg.znew;
    }
    else {
      resolved.znew = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: NewPositionRequest,
  Response: NewPositionResponse,
  md5sum() { return 'c122c247df04a12a46d905c9d7c5946b'; },
  datatype() { return 'assignment1/NewPosition'; }
};
