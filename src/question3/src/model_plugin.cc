#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ros/ros.h>
#include "std_msgs/String.h"
#include <string.h>

#define PI 3.14159265
namespace gazebo
{
  class PluginForModel : public ModelPlugin
  {
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      this->model = _parent;
      this->prepareRobot();

      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&PluginForModel::OnUpdate, this));

      joint = model->GetJoints();
    }

    ros::NodeHandle n;
    ros::Publisher topic_pub = n.advertise<std_msgs::String>("modelplugin", 1000);
    
    private: physics::Joint_V joint;
    std_msgs::String msg;  
    
    public: void OnUpdate()
    {
      for (auto &elem: joint){
        double angle = elem->Position()*180/PI;
        msg.data = elem->GetName() + " " + std::to_string(angle);
        topic_pub.publish(msg);        
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

  };

  GZ_REGISTER_MODEL_PLUGIN(PluginForModel)
}