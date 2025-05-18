#!/bin/sh

#SBATCH -n 1                            # 1 instance of MATLAB
#SBATCH --cpus-per-task=1               # 1 core per instance
#SBATCH --time=00:20:00                 # 20 minutes

# Add MATLAB to system path
module load matlab/R2024b

# Run code 
matlab -batch "parallel_fcn_multi_node(80)"

