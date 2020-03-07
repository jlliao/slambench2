for i in 0.0002 0.0004 0.0006 0.0008 0.001 0.0012 0.0014 0.0016 0.0018 0.002
do
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL1-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL2-ORB-COM-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libcombine-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL3-ORB-COM-$i.log
done