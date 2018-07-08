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

class DistrCenter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapPose = null;
      this.goalPose = null;
      this.puck1 = null;
      this.puck2 = null;
      this.isActive = null;
    }
    else {
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
      if (initObj.hasOwnProperty('puck1')) {
        this.puck1 = initObj.puck1
      }
      else {
        this.puck1 = 0;
      }
      if (initObj.hasOwnProperty('puck2')) {
        this.puck2 = initObj.puck2
      }
      else {
        this.puck2 = 0;
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
    // Serializes a message object of type DistrCenter
    // Serialize message field [mapPose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.mapPose, buffer, bufferOffset);
    // Serialize message field [goalPose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.goalPose, buffer, bufferOffset);
    // Serialize message field [puck1]
    bufferOffset = _serializer.int32(obj.puck1, buffer, bufferOffset);
    // Serialize message field [puck2]
    bufferOffset = _serializer.int32(obj.puck2, buffer, bufferOffset);
    // Serialize message field [isActive]
    bufferOffset = _serializer.bool(obj.isActive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DistrCenter
    let len;
    let data = new DistrCenter(null);
    // Deserialize message field [mapPose]
    data.mapPose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [goalPose]
    data.goalPose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [puck1]
    data.puck1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [puck2]
    data.puck2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isActive]
    data.isActive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/DistrCenter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9922e6e657a68d27d810667d48393520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D mapPose
    geometry_msgs/Pose2D goalPose
    int32 puck1
    int32 puck2
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
    const resolved = new DistrCenter(null);
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

    if (msg.puck1 !== undefined) {
      resolved.puck1 = msg.puck1;
    }
    else {
      resolved.puck1 = 0
    }

    if (msg.puck2 !== undefined) {
      resolved.puck2 = msg.puck2;
    }
    else {
      resolved.puck2 = 0
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

module.exports = DistrCenter;
