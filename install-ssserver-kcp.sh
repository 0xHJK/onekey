#!/bin/bash

# https://github.com/hangim/kcp-shadowsocks-docker

SS_PORT='443'
SS_PASSWORD='123456'
KCP_PORT='9443'

docker run -d --restart=always -e "SS_PORT=${SS_PORT}" -e "SS_PASSWORD=${SS_PASSWORD}" -e "SS_METHOD=chacha20" -e "SS_TIMEOUT=600" -e "KCP_PORT=9443" -e "KCP_MODE=fast" -e "MTU=1400" -e "SNDWND=1024" -e "RCVWND=1024" -p ${SS_PORT}:${SS_PORT} -p ${SS_PORT}:${SS_PORT}/udp -p ${KCP_PORT}:${KCP_PORT}/udp --name ssserver_kcp imhang/kcp-shadowsocks-docker

# 客户端配置
# --crypt none --mode fast --mtu 1400 --sndwnd 128 --rcvwnd 512--parityshard 0 --nocomp
# --sndwnd 128 --rcvwnd 512
