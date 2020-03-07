for i in 0.001 0.002 0.003 0.004 0.005 0.006 0.007 0.008 0.009 0.01
do
    # ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj1_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL1-ORB-INT-$i.log
    # ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL2-ORB-INT-$i.log
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj3_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/config/ICL3-ORB-INT-$i.log
done