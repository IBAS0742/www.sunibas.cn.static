#!/bin/bash
cd /home/ubuntu
mkdir tmp
cd tmp
wget https://nodejs.org/dist/v12.19.0/node-v12.19.0.tar.gz
tar vxf node-v12.19.0.tar.gz
cd node-v12.19.0.tar.gz
./configure
make
make test
make install
cp /home/ubuntu/tmp/node-v12.19.0.tar.gz /usr/sbin/