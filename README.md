# DOCKER FOR YDLIDARX2 (ROS2)
**Ydlidar-X2 Dockerfile and Docker-compose for ros2 (humble)**

This project provides Docker containerization for the YDLidar X2 LiDAR sensor with ROS2 Humble, allowing for easy setup, testing, and debugging across different environments.

**OVERVIEW**

This repository contains Docker configuration files to run the YDLidar X2 with ROS2 Humble. The containerized approach ensures consistent behavior across different systems and eliminates dependency issues when working with the YDLidar X2.

**FEATURES**

*Containerized YDLidar X2 Environment: Run the YDLidar driver in an isolated container with all dependencies pre-installed.

*ROS2 Humble Integration: Ready to use with ROS2 Humble.

*Easy Device Mounting: Configured to properly connect to the physical LiDAR sensor.

*Cross-Platform Compatibility: Works on various Linux distributions.

*Visualization Support: Includes configuration for RViz2 visualization.

**INSTALLATION**
```sh
mkdir ydlidar_docker
cd ydlidar_docker
git clone https://github.com/logesh1516/Docker_for_ydlidarX2.git
docker build -t ydlidarx2
```
**XHOST-SETTINGS**
```sh
#to give access to gui (rviz2)
xhost + 
```
**USAGE**
```sh
# Make sure your YDLidar X2 is connected via USB
docker-compose up 
```



