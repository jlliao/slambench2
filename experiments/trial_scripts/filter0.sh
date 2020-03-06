#!/bin/bash

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-KF-INT-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-KF-DEP-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-KF-COM-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.00 -o ./experiments/filter0/ICL2-KF-RND-000.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-ORB-INT-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-ORB-DEP-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-ORB-DEP-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.00 -o ./experiments/filter0/ICL2-ORB-RND-000.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-INF-INT-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-INF-DEP-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00000 -o ./experiments/filter0/ICL2-INF-DEP-00000.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.00 -o ./experiments/filter0/ICL2-INF-RND-000.log
