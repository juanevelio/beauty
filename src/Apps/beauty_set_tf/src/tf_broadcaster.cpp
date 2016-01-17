/***************************************************************
	> File Name: src/tf_broadcaster.cpp
	> Author   : Yu Jay
	> Mail     : yjcs1990@163.com 
	> Created Time: 2016年01月15日 星期五 10时28分19秒
 **************************************************************/

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc,char** argv)
{
	ros::init(argc,argv,"beauty_tf_publisher");
	ros::NodeHandle node;

	ros::Rate rate(100);

	tf::TransformBroadcaster map_broadcaster;
	tf::TransformBroadcaster laser_broadcaster;
	tf::TransformBroadcaster imu_broadcaster;
	
	while(node.ok())
	{
		
		map_broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0,0,0,1),tf::Vector3(0,0.0,0)),ros::Time::now(),"map","base_link"));
		laser_broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0,0,0,1),tf::Vector3(0.25,0.0,0.15)),ros::Time::now(),"base_link","base_laser"));
		imu_broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0,0,0,1),tf::Vector3(-0.25,0.05,0.0)),ros::Time::now(),"base_link","base_imu_link"));
		rate.sleep();
	}
}
