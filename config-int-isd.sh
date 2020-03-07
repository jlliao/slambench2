#!/bin/bash

for i in 0.0015 0.002 0.0025 0.003 0.0035 0.004 0.0045 0.005
do
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/TUM1XYZ-ISD-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/TUM2XYZ-ISD-INT-$i.log
done