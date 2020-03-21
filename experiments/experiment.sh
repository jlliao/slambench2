for f in 0.00001 0.00002 0.00005 0.00008 0.0001 0.000125 0.00015 0.0002 0.00025 0.0005 0.0008 0.001 0.00125 0.00175 0.0015 0.002 0.00225 0.0025 0.00275 0.003 0.0035 0.004 0.0045 0.005
do    
    for i in "1 0" "0 1" "1 1"
    do
        set -- $i
        # KF
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL1-KF-$f.log
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL2-KF-$f.log

        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1XYZ-KF-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1RPY-KF-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM2XYZ-KF-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/libkfusion-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM2RPY-KF-$f.log

        # INF
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL1-INF-$f.log
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libinfinitam-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL3-INF-$f.log

        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/libinfinitam-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1XYZ-INF-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/libinfinitam-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1RPY-INF-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/libinfinitam-cuda-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM2XYZ-INF-$f.log

        # ORB
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj0_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL0-ORB-$f.log
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL2-ORB-$f.log
        ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-ICL3-ORB-$f.log

        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1XYZ-ORB-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg1/rgbd_dataset_freiburg1_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM1RPY-ORB-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_xyz.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM2XYZ-ORB-$f.log
        ./build/bin/benchmark_loader -i datasets/TUM/freiburg2/rgbd_dataset_freiburg2_rpy.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $f -itw $1 -dpw $2 -o ./experiments/original/$1-$2-TUM2RPY-ORB-$f.log
    done
done