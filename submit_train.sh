#!/bin/bash

 
#SBATCH -p gpu
#SBATCH -A Students
#SBATCH -o /geode2/home/u050/leckhoff/Carbonate/classes/applied_ml/project_aml/logs/outputs/filename_%j.txt
#SBATCH -e /geode2/home/u050/leckhoff/Carbonate/classes/applied_ml/project_aml/logs/errors/filename_%j.err
#SBATCH --mail-type=END, FAIL
#SBATCH --mail-user=leckhoff@iu.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --gpus-per-node=1
#SBATCH --time=1-00:00:00

#Load any modules that your program needs
module load python/gpu/3.10.10

#Run your program
cd /geode2/home/u050/leckhoff/Carbonate/classes/applied_ml/project_aml
echo "srun -J $1 python aml_dicom/train.py $1"
srun -J $1 python aml_dicom/train.py $1