#!/bin/bash
#
#SBATCH --job-name=aggregate
#SBATCH --output=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_out/aggregate.%N.%j.out
#SBATCH --error=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_err/aggregate.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/cMapAggregate.py -m loop -r 1000 -o ""$1"_1000_1000_1" --plot-opt "max_lfc:5" --debug -b /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/1_dd_background_1000 /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_rex/c_elegans.PRJNA13758.WS285.genomic.fa.fai /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/1_1000 "$2"

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/cMapAggregate.py -m loop -r 1000 -o ""$1"_1000_1000_2" --plot-opt "max_lfc:5" --debug -b /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/2_dd_background_1000 /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_rex/c_elegans.PRJNA13758.WS285.genomic.fa.fai /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/2_1000 "$2"

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/cMapAggregate.py -m loop -r 1000 -o ""$1"_1000_1000_4" --plot-opt "max_lfc:5" --debug -b /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/4_dd_background_1000 /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_rex/c_elegans.PRJNA13758.WS285.genomic.fa.fai /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/4_1000 "$2"

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/cMapAggregate.py -m loop -r 1000 -o ""$1"_1000_1000_5" --plot-opt "max_lfc:5" --debug -b /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/5_dd_background_1000 /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_rex/c_elegans.PRJNA13758.WS285.genomic.fa.fai /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000_1000/5_1000 "$2"
