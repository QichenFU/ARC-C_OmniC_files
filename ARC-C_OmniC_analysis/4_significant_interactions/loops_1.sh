#!/bin/bash
#
#SBATCH --job-name=loops_1
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/loops_1.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/loops_1.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r I --ddprfx ce11_1000_I --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_I_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_I_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r II --ddprfx ce11_1000_II --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_II_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_II_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r III --ddprfx ce11_1000_III --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_III_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_III_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r IV --ddprfx ce11_1000_IV --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_IV_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_IV_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r V --ddprfx ce11_1000_V --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_V_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_V_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam

python2 /mnt/beegfs/home1/ahringer/qf222/ctk/findLoop.py -g /mnt/beegfs/home1/ahringer/qf222/celegans_reference_genome/PRJNA13758/c_elegans.PRJNA13758.WS285.genomic.fa.fai -r X --ddprfx ce11_1000_X --covexp 0.87 --offpeak --debug -o /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/contact_df_X_ce11.csv -O /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/1/bin_table_X_ce11.csv /mnt/beegfs6/home3/ahringer/qf222/new_data/loops/units_ce11.bed /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.cis.sorted.bam /mnt/beegfs6/home3/ahringer/qf222/new_data/split/split_1_1000.info.trans.sorted.bam