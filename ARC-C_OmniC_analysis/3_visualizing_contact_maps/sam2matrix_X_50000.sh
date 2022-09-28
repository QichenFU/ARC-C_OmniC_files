#!/bin/bash
#
#SBATCH --job-name=sam2matrix_50000_1
#SBATCH --output=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_out/sam2matrix_50000_1.%N.%j.out
#SBATCH --error=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_err/sam2matrix_50000_1.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/samToSparseMatrix.py -c /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r X: -w 50000 -d 600 -i /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1.valid.sam -o /mnt/beegfs6/home3/ahringer/qf222/new_data/matrix/1/1_X_50000.npz