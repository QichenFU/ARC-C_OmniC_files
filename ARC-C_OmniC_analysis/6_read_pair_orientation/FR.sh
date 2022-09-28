#!/bin/bash
#
#SBATCH --job-name=FR
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/FR.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/FR.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

samtools view -f 97 -F 156 Pooled_valid.bam -o Pooled.valid.FR_1.sam