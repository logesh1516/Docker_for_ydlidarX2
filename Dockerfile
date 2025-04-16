FROM osrf/ros:humble-desktop-full
COPY ros_entrypoint.sh .
RUN chmod +x ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]
SHELL ["/bin/bash", "-c"]
WORKDIR /ydlidarX2
COPY ydlidarX2 /ydlidarX2/src/
RUN apt-get update 
RUN apt install ros-humble-ament-cmake && rm -rf /var/lib/apt/lists/*
RUN mkdir -p src/YDLidar-SDK/build && \ 
    cd src/YDLidar-SDK/build && \
    cmake .. && make && make install
RUN source /opt/ros/humble/setup.bash && \
    colcon build
CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && source /ydlidarX2/install/setup.bash && exec bash"]



