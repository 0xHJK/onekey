#!/bin/bash

# Docker
# curl -sSL https://get.docker.com/ | sh

# DaoCloud
curl -sSL https://get.daocloud.io/docker | sh

# aliyun
# curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -

sudo usermod -aG $(whoami)

# Daocloud 加速
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://aa50c925.m.daocloud.io

sudo service docker restart

echo "You need logout and log back in"

