# KF
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/ICL0-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/ICL1-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/ICL2-KF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/ICL3-KF.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/TUM1XYZ-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/TUM1RPY-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/TUM2XYZ-KF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libkfusion-opencl-library.so -o ./experiments/original/TUM2RPY-KF.log

# ORB
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL0-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL1-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL2-ORB.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/ICL3-ORB.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM1XYZ-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM1RPY-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM2XYZ-ORB.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -o ./experiments/original/TUM2RPY-ORB.log

# LSD
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/ICL0-LSD.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/ICL1-LSD.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/ICL2-LSD.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/ICL3-LSD.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/TUM1XYZ-LSD.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/TUM1RPY-LSD.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/TUM2XYZ-LSD.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liblsdslam-original_mp-library.so -o ./experiments/original/TUM2RPY-LSD.log

# EF
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/ICL0-EF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/ICL1-EF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/ICL2-EF.log
./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/ICL3-EF.log

./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/TUM1XYZ-EF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/TUM1RPY-EF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/TUM2XYZ-EF.log
./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libefusion-cuda-library.so -o ./experiments/original/TUM2RPY-EF.log