// Auto-generated. Do not edit!

// (in-package rospb_pin_write.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pots {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pot1 = null;
      this.pot2 = null;
      this.A0 = null;
      this.A1 = null;
      this.A2 = null;
      this.A3 = null;
      this.A4 = null;
      this.A5 = null;
    }
    else {
      if (initObj.hasOwnProperty('pot1')) {
        this.pot1 = initObj.pot1
      }
      else {
        this.pot1 = 0;
      }
      if (initObj.hasOwnProperty('pot2')) {
        this.pot2 = initObj.pot2
      }
      else {
        this.pot2 = 0;
      }
      if (initObj.hasOwnProperty('A0')) {
        this.A0 = initObj.A0
      }
      else {
        this.A0 = 0;
      }
      if (initObj.hasOwnProperty('A1')) {
        this.A1 = initObj.A1
      }
      else {
        this.A1 = 0;
      }
      if (initObj.hasOwnProperty('A2')) {
        this.A2 = initObj.A2
      }
      else {
        this.A2 = 0;
      }
      if (initObj.hasOwnProperty('A3')) {
        this.A3 = initObj.A3
      }
      else {
        this.A3 = 0;
      }
      if (initObj.hasOwnProperty('A4')) {
        this.A4 = initObj.A4
      }
      else {
        this.A4 = 0;
      }
      if (initObj.hasOwnProperty('A5')) {
        this.A5 = initObj.A5
      }
      else {
        this.A5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pots
    // Serialize message field [pot1]
    bufferOffset = _serializer.uint16(obj.pot1, buffer, bufferOffset);
    // Serialize message field [pot2]
    bufferOffset = _serializer.uint16(obj.pot2, buffer, bufferOffset);
    // Serialize message field [A0]
    bufferOffset = _serializer.uint16(obj.A0, buffer, bufferOffset);
    // Serialize message field [A1]
    bufferOffset = _serializer.uint16(obj.A1, buffer, bufferOffset);
    // Serialize message field [A2]
    bufferOffset = _serializer.uint16(obj.A2, buffer, bufferOffset);
    // Serialize message field [A3]
    bufferOffset = _serializer.uint16(obj.A3, buffer, bufferOffset);
    // Serialize message field [A4]
    bufferOffset = _serializer.uint16(obj.A4, buffer, bufferOffset);
    // Serialize message field [A5]
    bufferOffset = _serializer.uint16(obj.A5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pots
    let len;
    let data = new Pots(null);
    // Deserialize message field [pot1]
    data.pot1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pot2]
    data.pot2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A0]
    data.A0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A1]
    data.A1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A2]
    data.A2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A3]
    data.A3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A4]
    data.A4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [A5]
    data.A5 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rospb_pin_write/Pots';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87137d7724e5f2f39cedc2787f725d30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 pot1
    uint16 pot2
    uint16 A0
    uint16 A1
    uint16 A2
    uint16 A3
    uint16 A4
    uint16 A5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pots(null);
    if (msg.pot1 !== undefined) {
      resolved.pot1 = msg.pot1;
    }
    else {
      resolved.pot1 = 0
    }

    if (msg.pot2 !== undefined) {
      resolved.pot2 = msg.pot2;
    }
    else {
      resolved.pot2 = 0
    }

    if (msg.A0 !== undefined) {
      resolved.A0 = msg.A0;
    }
    else {
      resolved.A0 = 0
    }

    if (msg.A1 !== undefined) {
      resolved.A1 = msg.A1;
    }
    else {
      resolved.A1 = 0
    }

    if (msg.A2 !== undefined) {
      resolved.A2 = msg.A2;
    }
    else {
      resolved.A2 = 0
    }

    if (msg.A3 !== undefined) {
      resolved.A3 = msg.A3;
    }
    else {
      resolved.A3 = 0
    }

    if (msg.A4 !== undefined) {
      resolved.A4 = msg.A4;
    }
    else {
      resolved.A4 = 0
    }

    if (msg.A5 !== undefined) {
      resolved.A5 = msg.A5;
    }
    else {
      resolved.A5 = 0
    }

    return resolved;
    }
};

module.exports = Pots;
