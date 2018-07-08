#include "desvia_robotino/Desvia.hpp"
#include <array>
#include <stdlib.h>


using namespace std;

#define N_SENSORS 9
#define MAX_SQUARE_RADIUS_INT 40
#define MAX_SQUARE_RADIUS_SIDES 30


float pointsDetected[2*N_SENSORS];

//std::vector <std::pair <float,float> > pointsDetected(N_SENSORS);

/*float squareDistance(std::pair <float,float> point) {
    return std::sqrt((std::pow(point.first,2) + std::pow(point.second,2)));
}*/


void Desvia::distanceSensorsCallback(const sensor_msgs::PointCloud::ConstPtr& msg){
  /*for (int i=0; i<N_SENSORS; i++) {
		pointsDetected[i] = std::make_pair(msg->points[i].x, msg->points[i].y);

	}*/
  int i,k;
  for (i=0,k = 0; k<N_SENSORS; k++,i=i+2) {
    pointsDetected[i] = msg->points[k].x;
    pointsDetected[i+1] = msg->points[k].y;
    //pointsDetected[i] = std::make_pair(msg->points[i].x, msg->points[i].y);

	}
  float intEsq = 100* hypot(pointsDetected[2],pointsDetected[3]);
  float esq = 100* hypot(pointsDetected[4],pointsDetected[5]);
  float dir = 100* hypot(pointsDetected[14],pointsDetected[15]);
  float intDir = 100* hypot(pointsDetected[16],pointsDetected[17]);

  /*float intEsq = 100*squareDistance(pointsDetected[1]);
  float esq = 100*squareDistance(pointsDetected[2]);
	float dir = 100*squareDistance(pointsDetected[7]);
  float intDir = 100*squareDistance(pointsDetected[8]);*/

  std::cout << "intEsq e " << intEsq << "\n";
  std::cout << "esq e " << esq << "\n";
  std::cout << "dir e " << dir << "\n";
  std::cout << "intDir e " << intDir << "\n";

  std_msgs::Bool aux;
  aux.data = false; // Caso não tenha nenhum perigo será publicado que não há perigo

  geometry_msgs::Twist velocidadeDeDesvio;

  velocidadeDeDesvio.linear.x = 0;
  velocidadeDeDesvio.linear.y = 0;
  velocidadeDeDesvio.linear.z = 0;
  velocidadeDeDesvio.angular.x = 0;
  velocidadeDeDesvio.angular.y = 0;
  velocidadeDeDesvio.angular.z = 0;

  if ( ( (intEsq > 0 && intEsq < MAX_SQUARE_RADIUS_INT) ||  (esq > 0 && esq < MAX_SQUARE_RADIUS_SIDES) ) &&  !( (intDir > 0 && intDir < MAX_SQUARE_RADIUS_INT) || (dir > 0 && dir < MAX_SQUARE_RADIUS_SIDES) ) ) {
    std::cout << "perigo na Esquerda !!!!\n";
    velocidadeDeDesvio.linear.y = -0.1;
    aux.data = true;
	}

  if ( !( (intEsq > 0 && intEsq < MAX_SQUARE_RADIUS_INT) ||  (esq > 0 && esq < MAX_SQUARE_RADIUS_SIDES) ) && ( (intDir > 0 && intDir < MAX_SQUARE_RADIUS_INT) || (dir > 0 && dir < MAX_SQUARE_RADIUS_SIDES) ) ) {
    std::cout << "perigo na Direita !!!!\n";
    velocidadeDeDesvio.linear.y = 0.1;
    aux.data = true;
	}

  if ( ( (intEsq > 0 && intEsq < MAX_SQUARE_RADIUS_INT) ||  (esq > 0 && esq < MAX_SQUARE_RADIUS_SIDES) ) && ( (intDir > 0 && intDir < MAX_SQUARE_RADIUS_INT) || (dir > 0 && dir < MAX_SQUARE_RADIUS_SIDES) ) ) {
    std::cout << "perigo na Direita e na Esquerda!!!!\n";
    velocidadeDeDesvio.linear.x = 0.05;
    aux.data = true;
	}

  pubDangerMsg.publish(aux);

  if (aux.data) { //Caso tem obstáculo publica velocidade para desviar, caso contrário o nó Move vai mandar o robotino seguir em frente
    evitarObstaculo.publish(velocidadeDeDesvio);
  }


}



Desvia::Desvia(){

  this->evitarObstaculo = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);
  this->pubDangerMsg = nh.advertise<std_msgs::Bool>("danger",1);
  this->getDistanceSensors = nh.subscribe("distance_sensors",1, &Desvia::distanceSensorsCallback,this);

}
