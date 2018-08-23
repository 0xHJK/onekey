#!/usr/bin/env sh

CONFIG=~/down/config
DOWN=~/down/downloads
WATCH=~/down/watch
G_PUID=1001
G_PGID=1002
PORT=9091

docker create --name=transmission \
-v $CONFIG:/config \
-v $DOWN:/downloads \
-v $WATCH:/watch \
-e PGID=$G_PGID -e PUID=$G_PUID \
-p $PORT:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission

# 另外需要在关机状态修改config/settins.json中的帐号密码再启动
