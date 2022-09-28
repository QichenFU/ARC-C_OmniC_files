#!/bin/bash
#
#SBATCH --job-name=RF
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/RF.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/RF.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

samtools view -f 81 -F 172 Pooled_valid.bam -o Pooled.valid.RF_1.sam
