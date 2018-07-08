#include <iostream>
#include "move/Mover.hpp"


using namespace std;


int main(int argc, char** argv) {

	ros::init(argc, argv, "move_node");
	Mover mover;

  while(ros::ok()) {
		ros::spinOnce();
	}



}
