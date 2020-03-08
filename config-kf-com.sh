for i in 0.00001 0.00005 0.0001 0.0002 0.0005 0.0008 0.001 0.0015 0.002
do    
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL2-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL3-KF-COM-$i.log
done