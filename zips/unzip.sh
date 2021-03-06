#!/bin/bash

homePath="/home/ubuntu/"
staticPath="www.sunibas.cn.static/"
if [ ! -x "${homePath}frp_0.22.0" ]; then
  mkdir "${homePath}frp_0.22.0"
  cd "${homePath}frp_0.22.0"
  tar -xvf "${homePath}${staticPath}zips/frp_0.22.0_linux_386.tar.gz"
fi

if [ ! -x "${homePath}${staticPath}pages" ]; then
  mkdir "${homePath}${staticPath}pages"
fi

if [ ! -x "${homePath}${staticPath}pages/geotrellis-docs" ]; then
  mkdir "${homePath}${staticPath}pages/geotrellis-docs"
  cd "${homePath}${staticPath}pages/geotrellis-docs"
  tar -vxf "${homePath}${staticPath}zips/geotrellis-docs.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/lgend" ]; then
  mkdir "${homePath}${staticPath}pages/lgend"
  cd "${homePath}${staticPath}pages/lgend"
  tar -vxf "${homePath}${staticPath}zips/lgend.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/modis" ]; then
  mkdir "${homePath}${staticPath}pages/modis"
  cd "${homePath}${staticPath}pages/modis"
  tar -vxf "${homePath}${staticPath}zips/modis.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/PDF" ]; then
  mkdir "${homePath}${staticPath}pages/PDF"
  cd "${homePath}${staticPath}pages/PDF"
  tar -vxf "${homePath}${staticPath}zips/PDF.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/FakeData" ]; then
  mkdir "${homePath}${staticPath}pages/FakeData"
  cd "${homePath}${staticPath}pages/FakeData"
  tar -vxf "${homePath}${staticPath}zips/FakeData.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/Cesium-1.71" ]; then
  mkdir "${homePath}${staticPath}pages/Cesium-1.71"
  cd "${homePath}${staticPath}pages/Cesium-1.71"
  unzip "${homePath}${staticPath}zips/Cesium-1.71.zip"
fi
if [ ! -x "${homePath}${staticPath}pages/utils" ]; then
  mkdir "${homePath}${staticPath}pages/utils"
  cd "${homePath}${staticPath}pages/utils"
  tar -vxf "${homePath}${staticPath}zips/sunibas.cn.utils.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/trans" ]; then
  mkdir "${homePath}${staticPath}pages/trans"
  cd "${homePath}${staticPath}pages/trans"
  tar -vxf "${homePath}${staticPath}zips/trans.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/idcard" ]; then
  mkdir "${homePath}${staticPath}pages/idcard"
  cd "${homePath}${staticPath}pages/idcard"
  tar -vxf "${homePath}${staticPath}zips/idcard.tar"
fi
if [ ! -x "${homePath}${staticPath}pages/AboutRecording" ]; then
  mkdir "${homePath}${staticPath}pages/AboutRecording"
  cd "${homePath}${staticPath}pages/AboutRecording"
  tar -vxf "${homePath}${staticPath}zips/AboutRecording.tar"
fi