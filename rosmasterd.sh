#!/bin/bash

if [ "$(hostname -I)"="192.168.1.100" ]; then
	echo "Assuming role of ROS master"
	sourcefile="/opt/ros/kinetic/setup.bash"
	if [ "$1" != ""]; then
		sourcefile="$1"
	fi
	bash -c "source $sourcefile && roscore"
	if [ "$2" != ""]; then
		bash -c "source $sourcefile && roslaunch $1"
	fi
else
	echo "Not assuming role of ROS master"
fi
