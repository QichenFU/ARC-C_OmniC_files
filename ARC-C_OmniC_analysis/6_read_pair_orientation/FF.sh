#!/bin/bash
#
#SBATCH --job-name=FF
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/FF.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/FF.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

samtools view -f 65 -F 60 Pooled_valid.bam -o Pooled.valid.FF_1.sam
