#!/bin/bash

URL=
CODENAME=`lsb_release -c | cut -f 2`

usage()
{
    echo "Usage: sudo `basename $0` [aliyun|163|tsinghua]"
    exit 1
}

if [ $# -eq 0 ] || [[ $1 == 'aliyun' ]]; then
    URL='http://mirrors.aliyun.com/ubuntu/'
elif [[ $1 == 'tsinghua' ]]; then
    URL='https://mirrors.tuna.tsinghua.edu.cn/ubuntu/'
elif [[ $1 == '163' ]]; then
    URL='http://mirrors.163.com/ubuntu/'
else
    usage
fi

echo "deb ${URL} ${CODENAME} main restricted universe multiverse" >> sources.list
echo "deb ${URL} ${CODENAME}-updates main restricted universe multiverse" >> sources.list
echo "deb ${URL} ${CODENAME}-backports main restricted universe multiverse" >> sources.list
echo "deb ${URL} ${CODENAME}-security main restricted universe multiverse" >> sources.list

mv /etc/apt/sources.list /etc/apt/sources.list.bak
mv sources.list /etc/apt/sources.list

apt-get update

