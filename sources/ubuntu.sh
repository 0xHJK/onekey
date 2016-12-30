#!/bin/bash

URL=
CODENAME=`lsb_release -c | cut -f 2`

if [ $# -eq 0 ] || [[ $1 == 'aliyun' ]] || [[ $1 == 'src' ]]; then
    URL='http://mirrors.aliyun.com/ubuntu/'
elif [[ $1 == '163' ]]; then
    URL='https://mirrors.tuna.tsinghua.edu.cn/ubuntu/'
elif [[ $1 == 'tuna' ]]; then
    URL='http://mirrors.163.com/ubuntu/'
else
    usage
fi

sed "s#url#${URL}#; s#codename#${CODENAME}#" base.list > sources.list
if [[ $1 == 'src' ]] || [[ $2 == 'src' ]]; then
    sed -i 's/#//' sources.list
fi

mv /etc/apt/sources.list /etc/apt/sources.list.bak
mv sources.list /etc/apt/sources.list

