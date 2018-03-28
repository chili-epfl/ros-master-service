#!/bin/bash

if [ "$(hostname -I)"="192.168.1.100" ]
then
	echo "Assuming role of ROS master"
	bash -c "source /opt/ros/kinetic/setup.bash && roscore"
else
	echo "Not assuming role of ROS master"
fi
