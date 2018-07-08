#ifndef Mover_H
#define Mover_H
#pragma once

#include <ros/ros.h>
#include <cmath>
#include <std_msgs/Bool.h>
#include <sensor_msgs/PointCloud.h>
#include <geometry_msgs/Twist.h>

using namespace std;


class Mover {

public:
	Mover();
   void checkDangerState(const std_msgs::Bool::ConstPtr& msg);

private:
	ros::NodeHandle nh;
	ros::Subscriber dangerState;
  ros::Publisher moveForward;
	geometry_msgs::Twist velocidade;

};

#endif
