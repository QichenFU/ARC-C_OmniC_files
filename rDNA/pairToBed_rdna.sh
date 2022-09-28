#!/bin/bash
#
#SBATCH --job-name=pairToBed
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/pairToBed.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/pairToBed.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

samtools sort -n -o cis_mapq0.sorted.bam cis_mapq0.bam

samtools sort -n -o trans_mapq0.sorted.bam trans_mapq0.bam

pairToBed -abam cis_mapq0.sorted.bam -b rDNA_ce11.bed > cis_rdna.bam

pairToBed -abam trans_mapq0.sorted.bam -b rDNA_ce11.bed > trans_rdna.bam

samtools sort -o cis_rdna.sorted.bam cis_rdna.bam

samtools sort -o trans_rdna.sorted.bam trans_rdna.bam

samtools index cis_rdna.sorted.bam

samtools index trans_rdna.sorted.bam