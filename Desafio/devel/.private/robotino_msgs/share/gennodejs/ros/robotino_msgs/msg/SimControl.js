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

class SimControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reset = null;
      this.next = null;
    }
    else {
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = false;
      }
      if (initObj.hasOwnProperty('next')) {
        this.next = initObj.next
      }
      else {
        this.next = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimControl
    // Serialize message field [reset]
    bufferOffset = _serializer.bool(obj.reset, buffer, bufferOffset);
    // Serialize message field [next]
    bufferOffset = _serializer.bool(obj.next, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimControl
    let len;
    let data = new SimControl(null);
    // Deserialize message field [reset]
    data.reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [next]
    data.next = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/SimControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e802094d6655f9e712493a08d112dde9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reset
    bool next
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimControl(null);
    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = false
    }

    if (msg.next !== undefined) {
      resolved.next = msg.next;
    }
    else {
      resolved.next = false
    }

    return resolved;
    }
};

module.exports = SimControl;
