/*
 * ROSPB source code for v1.2
 *
 * For use with the teleop_twist_keyboard.py package
 * 
 * For a similar tutorial write up, visit
 * www.ros.org/wiki/rosserial_arduino_demos
 *
 */

#if (ARDUINO >= 100)
 #include <Arduino.h>
#else
 #include <WProgram.h>
#endif

#include <Servo.h> 
#include <ros.h>
#include <std_msgs/UInt16.h>
#include <geometry_msgs/Twist.h>

#define servoPin 9

ros::NodeHandle nh;

int redLED = false;
int greenLED = false;
int yellowLED = false;
int motor = 0;

int motorForward = 5;
int motorBackward = 6;
int rLED = 2;
int yLED = 7;
int gLED = 4;

int servoIncrement = 0;
int servoPosition = 90;
int servoMax = 2300;
int servoMin = 600;

Servo servo;

void runPB(const geometry_msgs::Twist & keyMsg){
  servoIncrement = keyMsg.angular.z;
  if(keyMsg.linear.x){
   servoPosition = 90; 
  }
  
  redLED = keyMsg.linear.y;
  yellowLED = keyMsg.linear.z;
  
  greenLED = keyMsg.angular.x;
  motor = keyMsg.angular.y;
}


ros::Subscriber<geometry_msgs::Twist> cmd_vel("cmd_vel", runPB);

void setup(){

  nh.initNode();
  nh.subscribe(cmd_vel);
  
  pinMode(rLED, OUTPUT);
  pinMode(yLED, OUTPUT);
  pinMode(gLED, OUTPUT);
  pinMode(motorForward, OUTPUT);
  pinMode(motorBackward, OUTPUT);
  digitalWrite(motorForward, LOW);
  digitalWrite(motorBackward, LOW);
  
  servo.attach(servoPin); //attach servo instance to pin
  
}

void loop(){
  
     if (motor > 0){
      analogWrite(motorBackward, 0);
      
      for(int i = 0; i <= 255; i++){
      analogWrite(motorForward, i);
      }
     } else if (motor < 0){
      analogWrite(motorForward, 0);
      
      for(int i = 0; i <= 255; i++){
      analogWrite(motorBackward, i);
      }
     } else {
      digitalWrite(motorForward, 0);
      digitalWrite(motorBackward, 0);
     }
 
      digitalWrite(rLED, redLED);
      digitalWrite(yLED, yellowLED);
      digitalWrite(gLED, greenLED);
     
     servoPosition += servoIncrement;
     int positionTarget = constrain(servoPosition, 0, 180);
     positionTarget = map(positionTarget, 0, 180, servoMin, servoMax);
     
     servo.write(positionTarget);
     
     servoIncrement = 0;
  
  nh.spinOnce();
  delay(1);
}
