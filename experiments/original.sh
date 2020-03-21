# KF
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/ICL0-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/ICL1-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/ICL2-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/ICL3-KF.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/TUM1XYZ-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/TUM1RPY-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/TUM2XYZ-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libkfusion-cuda-library.so -o ./experiments/original/TUM2RPY-KF.log

# INF
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/ICL0-INF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/ICL1-INF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/ICL2-INF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/ICL3-INF.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/TUM1XYZ-INF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/TUM1RPY-INF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/TUM2XYZ-INF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libinfinitam-cuda-library.so -o ./experiments/original/TUM2RPY-INF.log

# ORB
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL0-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL1-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL2-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL3-ORB.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM1XYZ-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM1RPY-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM2XYZ-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM2RPY-ORB.log
