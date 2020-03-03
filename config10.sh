#!/bin/bash

for i in 0.00001 0.00002 0.00003 0.00004 0.00005 0.00006 0.00007 0.00008 0.00009 0.00010
do
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-KF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-KF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-KF-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-ORB-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-ORB-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-INF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-INF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/ICL2-INF-COM-$i.log

    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-KF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-KF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-KF-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-ORB-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-ORB-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-INF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-INF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM1XYZ-INF-COM-$i.log

    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-KF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-KF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-KF-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-ORB-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-ORB-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-INF-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-INF-DEP-$i.log
    ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/config10/TUM2XYZ-INF-COM-$i.log
done