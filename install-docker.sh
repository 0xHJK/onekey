#!/bin/bash

# 获取安装docker脚本，并从阿里源下载安装docker
# 阿里源为 https://mirrors.aliyun.com/docker-ce
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
