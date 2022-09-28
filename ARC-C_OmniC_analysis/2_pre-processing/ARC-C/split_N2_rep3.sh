#!/bin/bash
#
#SBATCH --job-name=split_N2_rep3
#SBATCH --output=/mnt/beegfs/home1/ahringer/qf222/slurm_out/split_N2_rep3.%N.%j.out
#SBATCH --error=/mnt/beegfs/home1/ahringer/qf222/slurm_err/split_N2_rep3.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/hicPipe/hicPipe.py split --resume --exReg /mnt/beegfs/home1/ahringer/qf222/blacklisted_region/ce11-blacklist.bed --nThread 12 /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/index/c_elegans.PRJNA13758.WS285.genomic.fa.gz /mnt/beegfs/home1/ahringer/qf222/ARC-C/fastq/N2_rep3/WQS-N2_R1.cleaned.fastq.gz /mnt/beegfs/home1/ahringer/qf222/ARC-C/fastq/N2_rep3/WQS-N2_R2.cleaned.fastq.gz /mnt/beegfs/home1/ahringer/qf222/ARC-C/split/N2_rep3