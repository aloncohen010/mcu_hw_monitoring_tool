// Auto-generated. Do not edit!

// (in-package ros_mhmlt_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class mhmlt_joystick_dataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mhmlt_joystick_dataRequest
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mhmlt_joystick_dataRequest
    let len;
    let data = new mhmlt_joystick_dataRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_mhmlt_msgs/mhmlt_joystick_dataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '001fde3cab9e313a150416ff09c08ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mhmlt_joystick_dataRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

class mhmlt_joystick_dataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.joystick_data = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
      if (initObj.hasOwnProperty('joystick_data')) {
        this.joystick_data = initObj.joystick_data
      }
      else {
        this.joystick_data = new sensor_msgs.msg.Joy();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mhmlt_joystick_dataResponse
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    // Serialize message field [joystick_data]
    bufferOffset = sensor_msgs.msg.Joy.serialize(obj.joystick_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mhmlt_joystick_dataResponse
    let len;
    let data = new mhmlt_joystick_dataResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joystick_data]
    data.joystick_data = sensor_msgs.msg.Joy.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Joy.getMessageSize(object.joystick_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_mhmlt_msgs/mhmlt_joystick_dataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '652ab8bbc8565d5fc36d35c89a957203';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    sensor_msgs/Joy joystick_data
    
    
    ================================================================================
    MSG: sensor_msgs/Joy
    # Reports the state of a joysticks axes and buttons.
    Header header           # timestamp in the header is the time the data is received from the joystick
    float32[] axes          # the axes measurements from a joystick
    int32[] buttons         # the buttons measurements from a joystick 
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mhmlt_joystick_dataResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    if (msg.joystick_data !== undefined) {
      resolved.joystick_data = sensor_msgs.msg.Joy.Resolve(msg.joystick_data)
    }
    else {
      resolved.joystick_data = new sensor_msgs.msg.Joy()
    }

    return resolved;
    }
};

module.exports = {
  Request: mhmlt_joystick_dataRequest,
  Response: mhmlt_joystick_dataResponse,
  md5sum() { return '1329a64fad65e08bad5df97dce71b9e1'; },
  datatype() { return 'ros_mhmlt_msgs/mhmlt_joystick_data'; }
};
