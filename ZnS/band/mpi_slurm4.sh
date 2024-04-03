#!/bin/bash
#SBATCH -J 35_7                # name of the job
#SBATCH -p standard-low            # name of the partition: available options "standard, standard-low, gpu, hm"
#SBATCH -n 4                     # no of processes or tasks
#SBATCH --cpus-per-task=1          # no of threads per process or task
#SBATCH -t 24:00:00                # walltime in HH:MM:SS, Max value 72:00:00 

#list of modules you want to use, for example
module load apps/quantum_espresso/6.4.1

#name of the executable 
exe=bands.x

#run the application 
mpirun -bootstrap slurm -n $SLURM_NTASKS $exe < zns_bands_pp.in > zns_bands_pp.out   # specify the application command-line options, if any, after $exe 
