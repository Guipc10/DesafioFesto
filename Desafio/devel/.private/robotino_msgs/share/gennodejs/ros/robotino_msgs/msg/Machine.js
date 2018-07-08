// Auto-generated. Do not edit!

// (in-package robotino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Machine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.mapPose = null;
      this.goalPose = null;
      this.puck = null;
      this.isActive = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('mapPose')) {
        this.mapPose = initObj.mapPose
      }
      else {
        this.mapPose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('goalPose')) {
        this.goalPose = initObj.goalPose
      }
      else {
        this.goalPose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('puck')) {
        this.puck = initObj.puck
      }
      else {
        this.puck = 0;
      }
      if (initObj.hasOwnProperty('isActive')) {
        this.isActive = initObj.isActive
      }
      else {
        this.isActive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Machine
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [mapPose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.mapPose, buffer, bufferOffset);
    // Serialize message field [goalPose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.goalPose, buffer, bufferOffset);
    // Serialize message field [puck]
    bufferOffset = _serializer.int32(obj.puck, buffer, bufferOffset);
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Machine
    let len;
    let data = new Machine(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mapPose]
    data.mapPose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [goalPose]
    data.goalPose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [puck]
    data.puck = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/Machine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '296941a7aa4333c9bbbf3c51b0688e02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Machine(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.mapPose !== undefined) {
      resolved.mapPose = geometry_msgs.msg.Pose2D.Resolve(msg.mapPose)
    }
    else {
      resolved.mapPose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.goalPose !== undefined) {
      resolved.goalPose = geometry_msgs.msg.Pose2D.Resolve(msg.goalPose)
    }
    else {
      resolved.goalPose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.puck !== undefined) {
      resolved.puck = msg.puck;
    }
    else {
      resolved.puck = 0
    }

    if (msg.isActive !== undefined) {
      resolved.isActive = msg.isActive;
    }
    else {
      resolved.isActive = false
    }

    return resolved;
    }
};

module.exports = Machine;
