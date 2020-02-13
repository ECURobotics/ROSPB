#include "ros/ros.h"

#include "std_msgs/UInt16.h"

#include "std_msgs/String.h"

#include <geometry_msgs/Twist.h>

#include <stdint.h>

double newAngle = 0;
double currentAngle = 90;
double stopCommand = 0;
uint8_t servoIncrement = 1;


void keyBoardCallback(const geometry_msgs::Twist & keyMsg) {
  stopCommand = keyMsg.linear.x;
  newAngle = keyMsg.angular.z;
  servoIncrement = 1;
}

int main(int argc, char ** argv) {

  ros::init(argc, argv, "servo_control_node");

  ros::NodeHandle n;

  ros::Publisher servoPub = n.advertise < std_msgs::UInt16 > ("servo", 1000);
  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, keyBoardCallback);

  ros::Rate loop_rate(10);

  std_msgs::UInt16 cmd_msg;
  cmd_msg.data = 90;

  while(stopCommand != -1){
    // NOTE: Angle can be between 0 and 180 only. No other value is permitted.
    if ((newAngle < 0.0) && (currentAngle < 180)) {
      currentAngle -= servoIncrement;
      ROS_INFO("current angle is now: %d", uint16_t(currentAngle));
      } else if ((newAngle > 0.0) && (currentAngle > 40)) { // change "currentAngle > X" where X is the lower bound of the servo
        currentAngle += servoIncrement;
      }
   
    cmd_msg.data = uint16_t(currentAngle);
    servoPub.publish(cmd_msg);
    ros::spinOnce();
    loop_rate.sleep();
    ROS_INFO("The Current Servo Angle is %d", cmd_msg.data);
    servoIncrement = 0;
  }

  ROS_INFO("Servo Control Example Terminated.");
  return 0;
}
