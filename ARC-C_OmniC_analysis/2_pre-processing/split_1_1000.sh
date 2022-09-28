#!/bin/bash
#
#SBATCH --job-name=split_1
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/split_1.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/split_1.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/hicPipe/hicPipe.py split --exReg /mnt/beegfs/home1/ahringer/qf222/blacklisted_region/ce11-blacklist.bed --nThread 12 --minD 1000 /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/index/c_elegans.PRJNA13758.WS285.genomic.fa.gz /mnt/beegfs6/home3/ahringer/qf222/new_data/fastqc/JAtab71-OmniC-1_S12_L001_R1_001.fastq.gz /mnt/beegfs6/home3/ahringer/qf222/new_data/fastqc/JAtab71-OmniC-1_S12_L001_R2_001.fastq.gz /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000