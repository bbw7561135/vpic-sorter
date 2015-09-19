#!/bin/bash

# export filepath=/scratch3/guofan/open3d-h5tracer/tracer
export filepath=/net/scratch1/guofan/share/ultra-sigma/sigma1e4-mime100-4000-track/tracer

export tstep=26236

# echo $filepath/T.$tstep/electron_tracer_sorted.h5p
mpirun -np 64 ./h5group-sorter -f $filepath/T.$tstep/electron_tracer.h5p \
-o $filepath/T.$tstep/electron_tracer_energy_sorted.h5p \
-g /Step#$tstep -m $filepath/T.$tstep/grid_metadata_electron_tracer.h5p \
-k 8 -a attribute