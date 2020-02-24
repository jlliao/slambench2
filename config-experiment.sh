#!/bin/bash

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00001 -o ./experiments/config-experiments/ICL2-KF-INT-00001.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00005 -o ./experiments/config-experiments/ICL2-KF-INT-00005.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00010 -o ./experiments/config-experiments/ICL2-KF-INT-00010.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00015 -o ./experiments/config-experiments/ICL2-KF-INT-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00020 -o ./experiments/config-experiments/ICL2-KF-INT-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00050 -o ./experiments/config-experiments/ICL2-KF-INT-00050.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/config-experiments/ICL2-KF-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00100 -o ./experiments/config-experiments/ICL2-KF-INT-00100.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00200 -o ./experiments/config-experiments/ICL2-KF-INT-00200.log
build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00500 -o ./experiments/config-experiments/ICL2-KF-INT-00500.log
build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00800 -o ./experiments/config-experiments/ICL2-KF-INT-00800.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00001 -o ./experiments/config-experiments/ICL2-KF-DEP-00001.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00005 -o ./experiments/config-experiments/ICL2-KF-DEP-00005.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00010 -o ./experiments/config-experiments/ICL2-KF-DEP-00010.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00015 -o ./experiments/config-experiments/ICL2-KF-DEP-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/config-experiments/ICL2-KF-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00050 -o ./experiments/config-experiments/ICL2-KF-DEP-00050.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00080 -o ./experiments/config-experiments/ICL2-KF-DEP-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00100 -o ./experiments/config-experiments/ICL2-KF-DEP-00100.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00200 -o ./experiments/config-experiments/ICL2-KF-DEP-00200.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00001 -o ./experiments/config-experiments/ICL2-KF-COM-00001.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00005 -o ./experiments/config-experiments/ICL2-KF-COM-00005.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00010 -o ./experiments/config-experiments/ICL2-KF-COM-00010.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/config-experiments/ICL2-KF-COM-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00020 -o ./experiments/config-experiments/ICL2-KF-COM-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00050 -o ./experiments/config-experiments/ICL2-KF-COM-00050.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00080 -o ./experiments/config-experiments/ICL2-KF-COM-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00100 -o ./experiments/config-experiments/ICL2-KF-COM-00100.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00200 -o ./experiments/config-experiments/ICL2-KF-COM-00200.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.10 -o ./experiments/config-experiments/ICL2-KF-RND-010.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.20 -o ./experiments/config-experiments/ICL2-KF-RND-020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/config-experiments/ICL2-KF-RND-030.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.40 -o ./experiments/config-experiments/ICL2-KF-RND-040.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.50 -o ./experiments/config-experiments/ICL2-KF-RND-050.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00001 -o ./experiments/config-experiments/ICL2-ORB-INT-00001.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00005 -o ./experiments/config-experiments/ICL2-ORB-INT-00005.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00010 -o ./experiments/config-experiments/ICL2-ORB-INT-00010.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00015 -o ./experiments/config-experiments/ICL2-ORB-INT-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00020 -o ./experiments/config-experiments/ICL2-ORB-INT-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00050 -o ./experiments/config-experiments/ICL2-ORB-INT-00050.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/config-experiments/ICL2-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00100 -o ./experiments/config-experiments/ICL2-ORB-INT-00100.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00200 -o ./experiments/config-experiments/ICL2-ORB-INT-00200.log