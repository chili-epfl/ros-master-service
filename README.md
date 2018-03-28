#### Installation
Run `sudo make install` or `sudo make uninstall` to install/remove the unit file and script.

#### Usage

Run `sudo systemctl start|stop rosmasterd.service` to start or stop the ROS core. A ROS installation must be present in `/opt/ros/kinetic`.
The core will only be started of the IP address returned by `hostname -I` is `192.168.1.100`.

Run `sudo systemctl enable rosmasterd.service` to automatically start the service on boot.
