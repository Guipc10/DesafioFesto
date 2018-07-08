#include <iostream>
#include "desvia_robotino/Desvia.hpp"

using namespace std;

int main(int argc, char** argv) {

	ros::init(argc, argv, "desvia_robotino_node");
	Desvia desvia;

  while(ros::ok()) {
		ros::spinOnce();
	}



}
