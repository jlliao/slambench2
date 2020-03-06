#!/bin/bash

for i in 0.0001 0.0002 0.0003 0.0004 0.0005 0.0006 0.0007 0.0008 0.0009 0.001
do
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/TUM1XYZ-ISD-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/TUM2XYZ-ISD-INT-$i.log
done