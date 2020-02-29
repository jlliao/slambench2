#!/bin/bash

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL0-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL0-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL0-KF-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL0-INF-COM-00015.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL1-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL1-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL1-KF-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL1-INF-COM-00015.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL2-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL2-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL2-KF-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL2-INF-COM-00015.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL3-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL3-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL3-KF-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libinfinitam-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL3-INF-COM-00015.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1XYZ-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1XYZ-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1RPY-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1RPY-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2XYZ-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2XYZ-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2RPY-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2RPY-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_360.slam  -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1360-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_360.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1360-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_floor.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1FLOOR-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_floor.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1FLOOR-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1DESK-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1DESK-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk2.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1DESK2-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk2.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1DESK2-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_room.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1ROOM-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_room.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1ROOM-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2360-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2360-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_kidnap.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2KIDNAP-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_kidnap.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2KIDNAP-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2DESK-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2DESK-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk_with_person.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2DESKP-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk_with_person.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2DESKP-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_no_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2LARGE-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_no_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2LARGE-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_with_loop.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2LARGELOOP-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_with_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2LARGELOOP-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_360.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2P360-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_360.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2P360-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM2-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM2-KF-DEP-00020.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.slam -load ./build/lib/liblsdslam-cpp-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM3-ISD-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM3-KF-DEP-00020.log

