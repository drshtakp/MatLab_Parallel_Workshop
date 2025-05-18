#!/bin/sh

#SBATCH -n 1                            # 1 instance of MATLAB
#SBATCH --cpus-per-task=8               # 8 cores per instance
#SBATCH --time=00:10:00                 # 10 minutes

# Add MATLAB to system path
module load matlab/R2024b

# Run code 
matlab -batch "parallel_fcn_single_node(80)"

