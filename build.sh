#!/bin/bash
mkdir -p build
#rm -rf build/*
mkdir -p bin
rm -rf bin/*
cd build
cmake ..
make -j8
cd ..
mv ./build/liblivox_sdk.so ./bin
mv ./build/liblvx_device_discovery.so ./bin
mv ./build/liblvx_device_manager.so ./bin
mv ./build/liblvx_file.so ./bin
