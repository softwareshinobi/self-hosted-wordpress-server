#!/bin/bash

##

reset

clear

##

set -e

set -x

##

cd /tmp/

git clone https://github.com/softwareshinobi/provision-aws-ec2-ubuntu-docker.git install-docker

cd install-docker

sudo bash provision.bash

echo "finished installing docker"
