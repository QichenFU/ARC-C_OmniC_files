#!/bin/bash
#
#SBATCH --job-name=background
#SBATCH --output=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_out/background.%N.%j.out
#SBATCH --error=/mnt/beegfs/home1/ahringer/qf222/new_data/slurm_err/background.%N.%j.err
#SBATCH --ntasks=1
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=qf222@cam.ac.uk

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.I.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.I.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.II.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.II.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.III.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.III.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.IV.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.IV.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.V.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.V.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_1000.X.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/1_dd_background_1000.X.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.I.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.I.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.II.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.II.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.III.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.III.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.IV.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.IV.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.V.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.V.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_1000.X.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/2_dd_background_1000.X.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.I.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.I.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.II.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.II.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.III.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.III.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.IV.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.IV.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.V.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.V.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_1000.X.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/4_dd_background_1000.X.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.I.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.I.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.II.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.II.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.III.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.III.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.IV.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.IV.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.V.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.V.KR.ddbg

python2 /mnt/beegfs6/home3/ahringer/qf222/ctk/cMapCalcDistanceBg.py -r 1000 --debug --prof //mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_1000.X.KR.npz /mnt/beegfs6/home3/ahringer/qf222/new_data/APA_1000/5_dd_background_1000.X.KR.ddbg