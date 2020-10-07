#!/bin/bash

# 定时任务

#nohup ./autoRebootWWWSUNIBASCN_new.sh > a.log 2>&1 &

interval=3600; #监听的间隔时间
homePath="/home/ubuntu/"
staticPath="www.sunibas.cn.static/"

while [ 1 -le 6 ]
do
  git pull https://github.com/IBAS0742/www.sunibas.cn.static.git
  ./zips/unzip.sh
  cp -f ./other.conf/frps.ini "${homePath}/frp_0.22.0/frps.ini"
  sleep $interval;
done