#!/bin/bash

homePath="/home/ubuntu/"
staticPath="www.sunibas.cn.static/"
if [ ! -x "${homePath}frp_0.22.0" ]; then
  mkdir "${homePath}frp_0.22.0"
  tar -xvf "${homePath}${staticPath}zips/frp_0.22.0_linux_386.tar.gz" "${homePath}frp_0.22.0"
fi
if [ ! -x "${homePath}${staticPath}pages/geotrellis-docs" ]; then
  mkdir "${homePath}${staticPath}pages/geotrellis-docs"
  tar -vxf "${homePath}${staticPath}zips/geotrellis-docs.tar" "${homePath}${staticPath}pages/geotrellis-docs"
fi
if [ ! -x "${homePath}${staticPath}pages/lgend" ]; then
  mkdir "${homePath}${staticPath}pages/lgend"
  tar -vxf "${homePath}${staticPath}zips/lgend.tar" "${homePath}${staticPath}pages/lgend"
fi
if [ ! -x "${homePath}${staticPath}pages/modis" ]; then
  mkdir "${homePath}${staticPath}pages/modis"
  tar -vxf "${homePath}${staticPath}zips/modis.tar" "${homePath}${staticPath}pages/modis"
fi
if [ ! -x "${homePath}${staticPath}pages/utils" ]; then
  mkdir "${homePath}${staticPath}pages/utils"
  tar -vxf "${homePath}${staticPath}zips/utils.tar" "${homePath}${staticPath}pages/utils"
fi