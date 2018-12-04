#!/bin/bash


SS_PORT='443'
SS_PASSWORD='123456'

# https://hub.docker.com/r/mritd/shadowsocks/
docker run -dt --name ss -p ${SS_PORT}:${SS_PORT} mritd/shadowsocks -s "-s 0.0.0.0 -p ${SS_PORT} -m chacha20 -k ${SS_PASSWORD} --fast-open"


# https://github.com/hangim/shadowsocks-docker
# docker run -d --restart=always -e "SS_PORT=${SS_PORT}" -e "SS_PASSWORD=${SS_PASSWORD}" -e "SS_METHOD=chacha20" -e "SS_TIMEOUT=600" -p ${SS_PORT}:${SS_PORT} -p ${SS_PORT}:${SS_PORT}/udp --name ssserver imhang/shadowsocks-docker
