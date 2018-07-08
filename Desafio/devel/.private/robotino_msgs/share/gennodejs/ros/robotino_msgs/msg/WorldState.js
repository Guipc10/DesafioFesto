// Auto-generated. Do not edit!

// (in-package robotino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Machine = require('./Machine.js');
let DistrCenter = require('./DistrCenter.js');

//-----------------------------------------------------------

class WorldState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.machAmarela = null;
      this.machVermelha = null;
      this.machAzul = null;
      this.task = null;
      this.currPuck = null;
      this.machines = null;
      this.dcs = null;
      this.inAction = null;
      this.terminate = null;
      this.stuck = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('machAmarela')) {
        this.machAmarela = initObj.machAmarela
      }
      else {
        this.machAmarela = 0;
      }
      if (initObj.hasOwnProperty('machVermelha')) {
        this.machVermelha = initObj.machVermelha
      }
      else {
        this.machVermelha = 0;
      }
      if (initObj.hasOwnProperty('machAzul')) {
        this.machAzul = initObj.machAzul
      }
      else {
        this.machAzul = 0;
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = 0;
      }
      if (initObj.hasOwnProperty('currPuck')) {
        this.currPuck = initObj.currPuck
      }
      else {
        this.currPuck = 0;
      }
      if (initObj.hasOwnProperty('machines')) {
        this.machines = initObj.machines
      }
      else {
        this.machines = [];
      }
      if (initObj.hasOwnProperty('dcs')) {
        this.dcs = initObj.dcs
      }
      else {
        this.dcs = [];
      }
      if (initObj.hasOwnProperty('inAction')) {
        this.inAction = initObj.inAction
      }
      else {
        this.inAction = false;
      }
      if (initObj.hasOwnProperty('terminate')) {
        this.terminate = initObj.terminate
      }
      else {
        this.terminate = false;
      }
      if (initObj.hasOwnProperty('stuck')) {
        this.stuck = initObj.stuck
      }
      else {
        this.stuck = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldState
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [machAmarela]
    bufferOffset = _serializer.int32(obj.machAmarela, buffer, bufferOffset);
    // Serialize message field [machVermelha]
    bufferOffset = _serializer.int32(obj.machVermelha, buffer, bufferOffset);
    // Serialize message field [machAzul]
    bufferOffset = _serializer.int32(obj.machAzul, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = _serializer.uint32(obj.task, buffer, bufferOffset);
    // Serialize message field [currPuck]
    bufferOffset = _serializer.uint32(obj.currPuck, buffer, bufferOffset);
    // Serialize message field [machines]
    // Serialize the length for message field [machines]
    bufferOffset = _serializer.uint32(obj.machines.length, buffer, bufferOffset);
    obj.machines.forEach((val) => {
      bufferOffset = Machine.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dcs]
    // Serialize the length for message field [dcs]
    bufferOffset = _serializer.uint32(obj.dcs.length, buffer, bufferOffset);
    obj.dcs.forEach((val) => {
      bufferOffset = DistrCenter.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [inAction]
    bufferOffset = _serializer.bool(obj.inAction, buffer, bufferOffset);
    // Serialize message field [terminate]
    bufferOffset = _serializer.bool(obj.terminate, buffer, bufferOffset);
    // Serialize message field [stuck]
    bufferOffset = _serializer.bool(obj.stuck, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldState
    let len;
    let data = new WorldState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [machAmarela]
    data.machAmarela = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [machVermelha]
    data.machVermelha = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [machAzul]
    data.machAzul = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [currPuck]
    data.currPuck = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [machines]
    // Deserialize array length for message field [machines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.machines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.machines[i] = Machine.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dcs]
    // Deserialize array length for message field [dcs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dcs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dcs[i] = DistrCenter.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [inAction]
    data.inAction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [terminate]
    data.terminate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stuck]
    data.stuck = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 57 * object.machines.length;
    length += 57 * object.dcs.length;
    return length + 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/WorldState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b2daee63b7ff8016cc89ebef6f22495';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    int32 machAmarela
    int32 machVermelha
    int32 machAzul
    uint32 task
    uint32 currPuck
    Machine[] machines
    DistrCenter[] dcs
    bool inAction
    bool terminate
    bool stuck
    
    ================================================================================
    MSG: robotino_msgs/Machine
    uint32 id
    geometry_msgs/Pose2D mapPose
    geometry_msgs/Pose2D goalPose
    int32 puck
    bool isActive
    
    
    
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    ================================================================================
    MSG: robotino_msgs/DistrCenter
    geometry_msgs/Pose2D mapPose
    geometry_msgs/Pose2D goalPose
    int32 puck1
    int32 puck2
    bool isActive
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorldState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.machAmarela !== undefined) {
      resolved.machAmarela = msg.machAmarela;
    }
    else {
      resolved.machAmarela = 0
    }

    if (msg.machVermelha !== undefined) {
      resolved.machVermelha = msg.machVermelha;
    }
    else {
      resolved.machVermelha = 0
    }

    if (msg.machAzul !== undefined) {
      resolved.machAzul = msg.machAzul;
    }
    else {
      resolved.machAzul = 0
    }

    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = 0
    }

    if (msg.currPuck !== undefined) {
      resolved.currPuck = msg.currPuck;
    }
    else {
      resolved.currPuck = 0
    }

    if (msg.machines !== undefined) {
      resolved.machines = new Array(msg.machines.length);
      for (let i = 0; i < resolved.machines.length; ++i) {
        resolved.machines[i] = Machine.Resolve(msg.machines[i]);
      }
    }
    else {
      resolved.machines = []
    }

    if (msg.dcs !== undefined) {
      resolved.dcs = new Array(msg.dcs.length);
      for (let i = 0; i < resolved.dcs.length; ++i) {
        resolved.dcs[i] = DistrCenter.Resolve(msg.dcs[i]);
      }
    }
    else {
      resolved.dcs = []
    }

    if (msg.inAction !== undefined) {
      resolved.inAction = msg.inAction;
    }
    else {
      resolved.inAction = false
    }

    if (msg.terminate !== undefined) {
      resolved.terminate = msg.terminate;
    }
    else {
      resolved.terminate = false
    }

    if (msg.stuck !== undefined) {
      resolved.stuck = msg.stuck;
    }
    else {
      resolved.stuck = false
    }

    return resolved;
    }
};

module.exports = WorldState;
