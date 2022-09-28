#!/bin/bash
#
#SBATCH --job-name=balancing_X_50000_1
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/balancing_X_50000_1.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/balancing_X_50000_1.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/cMapBalance.py --coef balanced_X_50000.txt 1_X_50000.npz balanced_1_X_50000.npz
