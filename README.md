# Filtering System in SLAMBench

This is the reference code for my capstone project: using filtering system to selective drop input frames for the SLAM system. Before the filter can be tested, SLAMBench needs to be installed. Detailed instruction with regards to installing SLAMBench is available here [https://github.com/jlliao/slambench2/tree/master](https://github.com/jlliao/slambench2/tree/master).

Files related to the filtering system are located in the following:
- framework/shared/include/SLAMBenchFilterLibraryHelper.h - the header file defining the helper functions
- framework/shared/src/SLAMBenchConfiguration.cpp - the configuration file of SLAMBench, defining the flow of data and configurations in the SLAM system. The filtering module is called here.
- framework/tools/filters - where all the filters are implemented. Currently combined filter (`combine_skip_flow.cpp`), depth filter (`depth_skip_flow.cpp`), intensity filter (`int_skip_flow.cpp`), identity filter (`identity_flow.cpp`), random skip filter (`skip_flow.cpp`) can perform filtering task. In the paper, combined filter is used for experiments. 
- framework/tools/filters/CMakeLists.txt - the cmake file that link filters to the SLAMBench library. 
- framework/experiments/original - some log files of experiments
- Explore_Design_Space.ipynb - generated figures for experiments

## Usage

For installation of SLAMBench, please refer to [https://github.com/jlliao/slambench2/tree/master](https://github.com/jlliao/slambench2/tree/master).

### Running a benchmark (e.g. KinectFusion & Combined Filter) ###

To run one algorithm you will need to use a **loader**. 
There is currently two different loaders supported, **benchmark** and **pangolin**.
Both loader are used the same way, except that **benchmark** is a command line application dedicated to measurements, while **pangolin** is a graphical user interface less precise in term of measurement but which provide a good interface for demonstrations.


Each loader has a series of parameters to specify such as the dataset location, or the libraries to run. 
The list of those parameters is available by using the "--help" parameters.

```
> ./build/bin/benchmark_loader --help 
 == SLAMBench Configuration ==
  Available parameters :
   -fl            --frame-limit           : last frame to compute (Default=0)
   -o             --log-file              : Output log file (Default=)
   -i             --input                 : Specify the input file or mode. (Default=)
   -load          --load-library          : Load a specific SLAM library. (Default=)
   -dse           --dse                   : Output solution space of parameters. (Default=false)
   -h             --help                  : Print the help. (Default=false)
   -nf            --negative-focal-length : negative focal length (Default=false)
   -realtime      --realtime-mode         : realtime frame loading mode (Default=false)
   -realtime-mult --realtime-multiplier   : realtime frame loading mode (Default=1)
   -fo            --file-output           : File to write slamfile containing outputs (Default=)
    
```


Then if you run the loader again, while providing a dataset file ```-i dataset.slam```, you will see new parameters dedicated to the dataset : 


```
> ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam --help
 == SLAMBench Configuration ==
  Available parameters :
   ....
   -Camera-intrisics --Camera-intrisics       : (Default=nullptr  Current=0.751875,1,0.4992185,0.4989583)
   -Depth-intrisics  --Depth-intrisics        : (Default=nullptr  Current=0.751875,1,0.4992185,0.4989583)
   -Depth-dip        --Depth-disparity-params : (Default=nullptr  Current=0.001,0)
   -Camera-intrisics --Camera-intrisics       : (Default=nullptr  Current=0.751875,1,0.4992185,0.4989583)


```

You can add a library name ```-load libname```, more parameter can be seen : 

```
> ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so  --help
 == SLAMBench Configuration ==
  Available parameters :

    ....

   -c                --compute-size-ratio     : Compute ratio (Default=1)
   -r                --integration-rate       : integration-rate  (Default=2)
   -t                --tracking-rate          : tracking-rate     (Default=1)
   -z                --rendering-rate         : rendering-rate    (Default=4)
   -l                --icp-threshold          : icp-threshold     (Default=1e-05)
   -m                --mu                     : mu                (Default=0.1)
   -s                --volume-size            : volume-size       (Default=8,8,8)
   -d                --volume-direction       : volume-direction  (Default=4,4,4)
   -v                --volume-resolution      : volume-resolution (Default=256,256,256)
   -y1               --pyramid-level1         : pyramid-level1    (Default=10)
   -y2               --pyramid-level2         : pyramid-level2    (Default=5)
   -y3               --pyramid-level3         : pyramid-level3    (Default=4)

```

Finally, you can add a filter ```-filter filter-name```, more parameter can be seen :

```
> ./build/bin/benchmark_loader -i datasets/ICL_NUIM/living_room_traj2_loop.slam -load ./build/lib/libkfusion-cpp-library.so -filter ./build/lib/libcombine-skip-flow-filter.so --help
 == SLAMBench Configuration ==
  Available parameters for combined filter:

    ....

   -fth           --skip-threshold        : Numerical value to specify KL divergence threshold ( Default=0.0001 )
   -itw           --intensity-weight      : Numerical value to specify intensity filter weight ( Default=1 )
   -dpw           --depth-weight          : Numerical value to specify depth filter weight ( Default=1 )
```

You can run a loader with **only one dataset** and **only one filter** at a time and **it must be specified first**.

