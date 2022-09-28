#!/bin/bash
#
#SBATCH --job-name=RR
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/RR.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/RR.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

samtools view -f 113 -F 12 Pooled_valid.bam -o Pooled.valid.RR_1.sam




