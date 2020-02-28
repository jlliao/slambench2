#!/bin/bash

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL0-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL0-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL0-ORB-COM-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/ICL0-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL1-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL1-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL1-ORB-COM-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/ICL1-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL2-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL2-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL2-ORB-COM-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/ICL2-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/ICL3-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/ICL3-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth 0.00015 -o ./experiments/filter-experiments/ICL3-ORB-COM-00015.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/ICL3-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1XYZ-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1XYZ-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1XYZ-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1RPY-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1RPY-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1RPY-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2XYZ-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2XYZ-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2XYZ-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2RPY-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2RPY-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2RPY-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_360.slam  -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1360-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_360.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1360-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_360.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1360-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_floor.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1FLOOR-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_floor.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1FLOOR-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_floor.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1FLOOR-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1DESK-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1DESK-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1DESK-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1DESK2-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1DESK2-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_desk2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1DESK2-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_room.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM1ROOM-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_room.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM1ROOM-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_room.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM1ROOM-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2360-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2360-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2360-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_kidnap.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2KIDNAP-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_kidnap.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2KIDNAP-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_360_kidnap.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2KIDNAP-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2DESK-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2DESK-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2DESK-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk_with_person.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2DESKP-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk_with_person.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2DESKP-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_desk_with_person.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2DESKP-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_no_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2LARGE-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_no_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2LARGE-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_no_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2LARGE-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_with_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2LARGELOOP-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_with_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2LARGELOOP-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_large_with_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2LARGELOOP-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_360.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2P360-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_360.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2P360-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_360.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2P360-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2PSLAM-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM2-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM2-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2PSLAM2-ORB-RND-030.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth 0.00080 -o ./experiments/filter-experiments/TUM2PSLAM3-ORB-INT-00080.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libdepth-skip-flow-filter.so -fth 0.00020 -o ./experiments/filter-experiments/TUM2PSLAM3-ORB-DEP-00020.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libskip-flow-filter.so -fth 0.30 -o ./experiments/filter-experiments/TUM2PSLAM3-ORB-RND-030.log

