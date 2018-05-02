#!/bin/bash

sourcefile="/home/florian/catkin_ws/devel/setup.bash"
launchargs="av_capture av_capture.launch"

if [ "$(hostname -I)"="192.168.1.100" ]; then
    echo "Assuming role of ROS master"
    bash -c ". $sourcefile && roslaunch $launchargs"
else
    echo "Not assuming role of ROS master"
fi
