#!/bin/bash

##

reset

clear

##

## set -e

## set -x

##

cd /tmp/

rm -rf install-docker

git clone https://github.com/softwareshinobi/provision-aws-ec2-ubuntu-docker.git install-docker

cd install-docker

sudo bash provision.bash

echo "finished installing docker"

##

docker stop $(docker ps -a -q)

docker system prune -a -f

docker volume prune -a -f

docker image ls

echo "docker cleaned up for wordpress"
