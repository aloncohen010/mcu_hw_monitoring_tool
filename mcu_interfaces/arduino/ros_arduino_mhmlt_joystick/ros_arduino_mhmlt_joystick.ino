/*
   rosserial mhlmt ardunio node
*/

#include <ros.h>
#include <ros_mhmlt_msgs/mhmlt_control_service.h>
#include <ros_mhmlt_msgs/mhmlt_joystick_data.h>

using ros_mhmlt_msgs::mhmlt_control_service; // fix ros msg variable names form state to command
using ros_mhmlt_msgs::mhmlt_joystick_data; // shrink data frame

// joystick configuration
const sensor_msgs::Joy::_axes_type NUMBER_OF_AXIS = 2;
const sensor_msgs::Joy::_buttons_type NUMBER_OF_BUTTONS = 3;

enum ARDUINO_STATE : bool {
  STANDBY = false,
  SENDING = true,
};

enum COMMAND : bool {
  STOP = false,
  SEND = true,
};


//// callback function to handle rpc requests to this arduino ros node
void rpcCallback(const mhmlt_control_service::Request& rpcReq, mhmlt_control_service::Response& rpcRes) {
  // implement when needed
}

// callback function to handle data reuqests to this arduino ros node
void dataCallback(const mhmlt_joystick_data::Request& dataReq, mhmlt_joystick_data::Response& dataRes) {
  if (dataReq.state == COMMAND::SEND) {
    dataRes.state = ARDUINO_STATE::SENDING;
    for (int i = 0; i < NUMBER_OF_AXIS; i++) {
      dataRes.joystick_data.axes[i] = analogRead(i);
    }
    for (int i = 0; i < NUMBER_OF_BUTTONS; i++) {
      dataRes.joystick_data.buttons[i] = digitalRead(i);
    }
  } else {
    dataRes.state = ARDUINO_STATE::STANDBY;
    for (int i = 0; i < NUMBER_OF_AXIS; i++) {
      dataRes.joystick_data.axes[i] = 0;
    }
    for (int i = 0; i < NUMBER_OF_BUTTONS; i++) {
      dataRes.joystick_data.buttons[i] = 0;
    }
  }
}

ros::NodeHandle  nh; // ros handle
ros::ServiceServer<mhmlt_control_service::Request, mhmlt_control_service::Response> rpc_server("arudino_mhmlt_rpc_srv", &rpcCallback); // setting up ros service to handle rpc
ros::ServiceServer<mhmlt_joystick_data::Request, mhmlt_joystick_data::Response> data_server("arudino_mhmlt_data_srv", &dataCallback); // setting up ros service to handle data
// mhmlt rpc command response stub to be initialized at run time according to rpc request
mhmlt_control_service::Response controlRes;
// mhmlt joystick data response stub to be initialized at run time according to data request
mhmlt_joystick_data::Response joystickDataRes;

void setup()
{
  // initialzing joystick data structure
  joystickDataRes.joystick_data.axes_length = NUMBER_OF_AXIS;
  joystickDataRes.joystick_data.axes = new sensor_msgs::Joy::_axes_type[int(NUMBER_OF_AXIS)];
  joystickDataRes.joystick_data.buttons_length = NUMBER_OF_BUTTONS;
  joystickDataRes.joystick_data.buttons = new sensor_msgs::Joy::_buttons_type[int(NUMBER_OF_BUTTONS)];
  // initialzing ros node
  nh.initNode();
  // advertising services
  nh.advertiseService(rpc_server);
  nh.advertiseService(data_server);
  // startup
  while (!nh.connected()) nh.spinOnce();
  nh.loginfo("Arduino ros node startup complete");
}

void loop()
{
  nh.spinOnce();
}
