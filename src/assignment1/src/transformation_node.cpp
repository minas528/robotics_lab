#include "ros/ros.h"
#include "assignment1/NewPosition.h"
#include <math.h>

#define PI 3.14159265

bool transform(assignment1::NewPosition::Request &req, assignment1::NewPosition::Response &res){
  float a = cos(req.gamma*PI/180);
  float b = sin(req.gamma*PI/180);
  float c = cos(req.beta*PI/180);
  float d = sin(req.beta*PI/180);
  float e = cos(req.alpha*PI/180);
  float f = sin(req.alpha*PI/180);
  
  res.xnew = (c*a*req.x) - (req.y*e*b) + (req.y*f*d*a) + (req.z*f*b) + (req.z*e*d*a);
  res.ynew = c*b*req.x - (req.z*f*a) + req.y*e*a + req.y*f*d*b + req.z*e*d*b;
  res.znew = -d*req.x + req.y*f*c + req.z*e*c;

  res.xnew = res.xnew + req.d;
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "transformation");
  ros::NodeHandle nh;

  ros::ServiceServer service = nh.advertiseService("Transformation", transform);
  
  ros::spin();
  return 0;
}