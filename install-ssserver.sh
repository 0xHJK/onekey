#!/bin/bash

# https://github.com/hangim/shadowsocks-docker

SS_PORT='443'
SS_PASSWORD='123456'

docker run -d --restart=always -e "SS_PORT=${SS_PORT}" -e "SS_PASSWORD=${SS_PASSWORD}" -e "SS_METHOD=chacha20" -e "SS_TIMEOUT=600" -p ${SS_PORT}:${SS_PORT} -p ${SS_PORT}:${SS_PORT}/udp --name ssserver imhang/shadowsocks-docker
