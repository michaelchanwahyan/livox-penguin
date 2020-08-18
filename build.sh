#!/bin/bash
mkdir -p build
#rm -rf build/*
mkdir -p bin
rm -rf bin/*
cd build
cmake ..
make -j8
cd ..
mkdir -p bin/sample/lidar_lvx_file/
mv     build/sample/lidar_lvx_file/lidar_lvx_sample ./bin/sample/lidar_lvx_file/
