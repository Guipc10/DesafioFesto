#include "move/Mover.hpp"
#include <array>
#include <stdlib.h>



void Mover::checkDangerState(const std_msgs::Bool::ConstPtr& msg) {

            if(msg->data == true) { //se esta em perigo...
              std::cout << "em perigo!\n";
            }
            else { //caso nao esteja mais em perigo...
              velocidade.linear.x = 0.1;
              velocidade.linear.y = 0;
              velocidade.linear.z = 0;
              velocidade.angular.x = 0;
              velocidade.angular.y = 0;
              velocidade.angular.z = 0;
              moveForward.publish(velocidade);
            }

}




Mover::Mover() {
	this->moveForward = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	this->dangerState = nh.subscribe("danger", 1, &Mover::checkDangerState, this);

  velocidade.linear.x = 0;
  velocidade.linear.y = 0;
  velocidade.linear.z = 0;
  velocidade.angular.x = 0;
  velocidade.angular.y = 0;
  velocidade.angular.z = 0;

  moveForward.publish(velocidade);

	std::cout << "construtor construido\n";
}
