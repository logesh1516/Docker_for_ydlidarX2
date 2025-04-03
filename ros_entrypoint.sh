#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/humble/setup.bash"
echo 'source "/opt/ros/humble/setup.bash"' >> ~/.bashrc
exec "$@"