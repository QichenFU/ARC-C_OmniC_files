#!/bin/bash
#
#SBATCH --job-name=contact_table
#SBATCH --output=/mnt/beegfs/home1/ahringer/qf222/slurm_out/contact_table.%N.%j.out
#SBATCH --error=/mnt/beegfs/home1/ahringer/qf222/slurm_err/contact_table.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/make2Dfrom1D.py loop -r 1000 -f 10000 -d 20000 -D 1000000 -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai "$1" > "contact_table_"$2"_r_1000_ce11.csv"