#!/usr/bin/env bash

echo "===>docker:"
sudo docker run -it \
--name ubuntu1204_gcc48_1 \
-v "/home/pi/Documents/DockerEnv:/root/Env" \
ubuntu1204_gcc48_0



