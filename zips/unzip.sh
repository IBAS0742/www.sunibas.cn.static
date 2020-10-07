#!/bin/bash

homePath="/home/ubuntu/"
staticPath="www.sunibas.cn.static/"
if [ ! -x "${homePath}frp_0.22.0" ]; then
  tar -xvf "${homePath}${staticPath}zips/frp_0.22.0_linux_386.tar.gz" "${homePath}frp_0.22.0"
fi
if [ ! -x "${homePath}${staticPath}pages/geotrellis-docs" ]; then
  tar -vxf "${homePath}${staticPath}zips/geotrellis-docs.tar" "${homePath}${staticPath}pages/geotrellis-docs"
fi
if [ ! -x "${homePath}${staticPath}pages/lgend" ]; then
  tar -vxf "${homePath}${staticPath}zips/lgend.tar" "${homePath}${staticPath}pages/lgend"
fi
if [ ! -x "${homePath}${staticPath}pages/modis" ]; then
  tar -vxf "${homePath}${staticPath}zips/modis.tar" "${homePath}${staticPath}pages/modis"
fi
if [ ! -x "${homePath}${staticPath}pages/utils" ]; then
  tar -vxf "${homePath}${staticPath}zips/utils.tar" "${homePath}${staticPath}pages/utils"
fi