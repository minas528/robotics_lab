#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ros/ros.h>
#include "question4/JointPosition.h"
#include "std_msgs/String.h"
#include <string.h>

// #include "question4"

#define PI 3.14159265
namespace gazebo
{
  class JointPlugin : public ModelPlugin
  {
    
    ros::NodeHandle nh;
    ros::ServiceServer service;

    bool transform(question4::JointPosition::Request &req, question4::JointPosition::Response &res){
      double fir = req.first*PI/180;
      double sec = req.second*PI/180;
      double thi = req.third*PI/180;
      double fou = req.fourth*PI/180;
      
      jointController->SetPositionTarget( jointList[0]->GetScopedName(), fir);
      jointController->SetPositionTarget( jointList[1]->GetScopedName(), sec);
      jointController->SetPositionTarget( jointList[2]->GetScopedName(), thi);
      jointController->SetPositionTarget( jointList[3]->GetScopedName(), fou);

      return true;
  }

    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      this->model = _parent;    
      this->prepareRobot();

      if (!ros::isInitialized())
      {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "transformation", ros::init_options::NoSigintHandler);
      }
      ros::Rate loop_rate(10);
      jointController = this->model->GetJointController();
      this->jointList = this->model->GetJoints();
      service = nh.advertiseService("/change_angles", &JointPlugin::transform, this);

      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&JointPlugin::OnUpdate, this)
        );
    }
    
    private: physics::Joint_V joint;
    std_msgs::String msg;  
    
    public: void OnUpdate()
    {
      for (auto &elem: joint){
        double angle = elem->Position()*180/PI;
        msg.data = elem->GetName() + " " + std::to_string(angle);
        // topic_pub.publish(msg);        
      }
    }

    public: void prepareRobot()
    {
      common::PID pid = common::PID(500, 250, 300);

      std::string name = this->model->GetJoint("joint1")->GetScopedName();
			this->model->GetJointController()->SetPositionPID(name, pid);
			this->model->GetJointController()->SetPositionTarget(name, 0);

      name = this->model->GetJoint("joint2")->GetScopedName();
			this->model->GetJointController()->SetPositionPID(name, pid);
			this->model->GetJointController()->SetPositionTarget(name, 0.5);

      name = this->model->GetJoint("joint3")->GetScopedName();
			this->model->GetJointController()->SetPositionPID(name, pid);
			this->model->GetJointController()->SetPositionTarget(name, -1.5);

      name = this->model->GetJoint("joint4")->GetScopedName();
			this->model->GetJointController()->SetPositionPID(name, pid);
			this->model->GetJointController()->SetPositionTarget(name, 0.5);
    }

    private: 
      physics::ModelPtr model;
      event::ConnectionPtr updateConnection;
      physics::JointControllerPtr jointController;
      physics::Joint_V jointList;

  };

  GZ_REGISTER_MODEL_PLUGIN(JointPlugin)
}





