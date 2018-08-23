#!/bin/bash

if [[ -n "$1" && "$1" == "aliyun" ]]; then
    # 获取安装docker脚本，并从阿里源下载安装docker
    # 阿里源为 https://mirrors.aliyun.com/docker-ce
    echo "Installing docker from aliyun mirror"
    curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
else
    # 从官方镜像安装
    echo "Installing docker from official mirror"
    curl -fsSL https://get.docker.com | bash
fi
