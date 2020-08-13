#!/usr/bin/env bash

echo "===>docker:"
sudo docker run -it \
--name ubuntu1604_gcc54_1 \
-v "/home/pi/Documents/DockerEnv:/root/Env" \
ubuntu1604_gcc54_0



