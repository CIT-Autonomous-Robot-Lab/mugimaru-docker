#!/bin/bash

docker run -it --name mugimaru --rm --gpus all --privileged --net=host --ipc=host --env=DISPLAY --env=QT_X11_NO_MITSHM=1 --mount type=bind,source=/dev,target=/dev --mount type=bind,source=/home/ubuntu/.ssh,target=/home/ubuntu/.ssh --runtime=nvidia --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw -v /var/run/NetworkManager:/var/run/NetworkManager -v $HOME/mugimaru-docker/ros2_ws:$HOME/ros2_ws/ -v $HOME/mugimaru-docker/ws_livox:$HOME/ws_livox/ -v $HOME/mugimaru-docker/nav2_ws:$HOME/nav2_ws/ -v $HOME/mugimaru-docker/setup.bash:$HOME/.setup.bash mugimaru:latest
