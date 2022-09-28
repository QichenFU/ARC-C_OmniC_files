#!/bin/bash
#
#SBATCH --job-name=filter_1
#SBATCH --output=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_out/filter_1.%N.%j.out
#SBATCH --error=/mnt/beegfs6/home3/ahringer/qf222/new_data/slurm_err/filter_1.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

awk '$22<0.05 && $15>5' contact_df_I_ce11.csv > filtered_contact_df_I_ce11.csv

awk '$22<0.05 && $15>5' contact_df_II_ce11.csv > filtered_contact_df_II_ce11.csv

awk '$22<0.05 && $15>5' contact_df_III_ce11.csv > filtered_contact_df_III_ce11.csv

awk '$22<0.05 && $15>5' contact_df_IV_ce11.csv > filtered_contact_df_IV_ce11.csv

awk '$22<0.05 && $15>5' contact_df_V_ce11.csv > filtered_contact_df_V_ce11.csv

awk '$22<0.05 && $15>5' contact_df_X_ce11.csv > filtered_contact_df_X_ce11.csv

cat filtered* > filtered_all_ce11.csv