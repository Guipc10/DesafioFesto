// Auto-generated. Do not edit!

// (in-package robotino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StateId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.training = null;
      this.state_id = null;
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('training')) {
        this.training = initObj.training
      }
      else {
        this.training = false;
      }
      if (initObj.hasOwnProperty('state_id')) {
        this.state_id = initObj.state_id
      }
      else {
        this.state_id = 0;
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StateId
    // Serialize message field [training]
    bufferOffset = _serializer.bool(obj.training, buffer, bufferOffset);
    // Serialize message field [state_id]
    bufferOffset = _serializer.uint64(obj.state_id, buffer, bufferOffset);
    // Serialize message field [reward]
    bufferOffset = _serializer.int64(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StateId
    let len;
    let data = new StateId(null);
    // Deserialize message field [training]
    data.training = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state_id]
    data.state_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reward]
    data.reward = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/StateId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b7ffe1334bdc2699a7de52a539949b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool training
    uint64 state_id
    int64 reward
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StateId(null);
    if (msg.training !== undefined) {
      resolved.training = msg.training;
    }
    else {
      resolved.training = false
    }

    if (msg.state_id !== undefined) {
      resolved.state_id = msg.state_id;
    }
    else {
      resolved.state_id = 0
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0
    }

    return resolved;
    }
};

module.exports = StateId;
