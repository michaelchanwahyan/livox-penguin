#!/bin/bash
mkdir -p build
#rm -rf build/*
mkdir -p bin
rm -rf bin/*
cd build
cmake ..
make -j8
cd ..
mv ./build/livox-penguin ./bin
