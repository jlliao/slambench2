for i in 0.00001 0.00002 0.00005 0.00008 0.0001 0.00015 0.0002 0.0005 0.0008 0.001 0.00125 0.0015 0.00175 0.002
do
    ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/liborbslam2-original-library.so -filter ./build/lib/libint-skip-flow-filter.so -fth $i -o ./experiments/final/filter/ICL2-ORB-INT-$i.log
done