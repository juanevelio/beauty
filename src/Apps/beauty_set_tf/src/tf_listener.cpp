/***************************************************************
	> File Name: src/tf_listener.cpp
	> Author   : Yu Jay
	> Mail     : yjcs1990@163.com 
	> Created Time: 2016年01月15日 星期五 10时35分16秒
 **************************************************************/

#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/transform_listener.h>

void transformPoint(const tf::TransformListener& listener)
{
	// crate a point in the base_laser and base_imu frame that we'd like to transform to the base_link frame
	geometry_msgs::PointStamped laser_point;
	geometry_msgs::PointStamped imu_point;
	laser_point.header.frame_id="base_laser";
	imu_point.header.frame_id  ="base_imu";

	// ust he most recent transform available for our simple example
	laser_point.header.stamp = ros::Time();
	imu_point.header.stamp   = ros::Time();

	// an arbitray point in space
	laser_point.point.x = 0;
	laser_point.point.y = 0;
	laser_point.point.z = 0;
	imu_point.point.x   = 0;
	imu_point.point.y   = 0;
	imu_point.point.z   = 0;

	try{
		geometry_msgs::PointStamped base_point;
		geometry_msgs::PointStamped base_point1;
		listener.transformPoint("base_link",laser_point,base_point);
		listener.transformPoint("base_link",imu_point,base_point1);

		ROS_INFO("base_laser: (%.2f, %.2f. %.2f) -----> base_link: (%.2f, %.2f, %.2f) at time %.2f",laser_point.point.x, laser_point.point.y, laser_point.point.z,base_point.point.x, base_point.point.y, base_point.point.z, base_point.header.stamp.toSec());
		ROS_INFO("base_laser: (%.2f, %.2f. %.2f) -----> base_link: (%.2f, %.2f, %.2f) at time %.2f",laser_point.point.x, laser_point.point.y, laser_point.point.z,base_point1.point.x, base_point1.point.y, base_point1.point.z, base_point1.header.stamp.toSec());
	}
	catch(tf::TransformException& ex){
		ROS_ERROR("Received an exception trying to transform a point from \"base_laser\" or \"base_imu\" to \"base_link\": %s", ex.what());
	}
}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"beauty_tf_listener");
	ros::NodeHandle node;

	tf::TransformListener listener(ros::Duration(10));

	// transform a point once every second
	ros::Timer time = node.createTimer(ros::Duration(1.0),boost::bind(&transformPoint,boost::ref(listener)));

	ros::spin();
}
