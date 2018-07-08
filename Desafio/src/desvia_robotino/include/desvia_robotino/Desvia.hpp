#ifndef Desvia_H
#define Desvia_H
#pragma once

#include <ros/ros.h>
#include <cmath>
#include <std_msgs/Bool.h>
#include <sensor_msgs/PointCloud.h>
#include <geometry_msgs/Twist.h>
#include <utility>
#include <vector>

using namespace std;


class Desvia {

public:
	  Desvia();
    void distanceSensorsCallback(const sensor_msgs::PointCloud::ConstPtr& msg);


private:
    ros::NodeHandle nh;
    ros::Subscriber getDistanceSensors;
    ros::Publisher pubDangerMsg, evitarObstaculo;

};

#endif
