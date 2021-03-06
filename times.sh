#!/bin/bash

# 定时任务

#nohup ./time.sh > a.log 2>&1 &

interval=3600; #监听的间隔时间
homePath="/home/ubuntu/"
staticPath="www.sunibas.cn.static/"

while [ 1 -le 6 ]
do
  echo "git pull"
  # 拉取后不要显示文本
  # 先退三个版本以保证没有任何修改发生
  # git reset --hard HEAD~3
  # git pull|echo ^x  # https://github.com/IBAS0742/www.sunibas.cn.static.git

  echo "unzip"
  ./zips/unzip.sh

  echo "copy frps.ini"
  cp -f ./other.conf/frps.ini "${homePath}frp_0.22.0/frp_0.22.0_linux_386/frps.ini"

  echo "copy nginx conf"
  sudo cp "${homePath}${staticPath}/nginx.conf/frp.conf" "/etc/nginx/conf.d/"
  sudo cp "${homePath}${staticPath}/nginx.conf/docs.conf" "/etc/nginx/conf.d/"
  sudo cp "${homePath}${staticPath}/nginx.conf/main.conf" "/etc/nginx/conf.d/"
  # sudo cp "${homePath}${staticPath}/nginx.conf/main.https.conf" "/etc/nginx/conf.d/"
  sudo cp "${homePath}${staticPath}/nginx.conf/public.conf" "/etc/nginx/conf.d/"

  echo "update bing"
  if [ ! -x "${homePath}${staticPath}jsons" ]; then
    mkdir "${homePath}${staticPath}jsons"
  fi
  sudo node "${homePath}${staticPath}/codes/getBingPicture.js"

  echo "over one turn"
  sleep $interval;
done