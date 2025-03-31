#!/bin/bash
#SBATCH --output=/fred/oz094/yqli/output/IDN/%x-out.txt  # %x = job name
#SBATCH --ntasks=1
#SBATCH -c 8
#SBATCH --mem=8G
#SBATCH --time=30:00:00
#SBATCH --gres=gpu:2   # Request GPU if needed
#SBATCH -A oz094
#SBATCH -D /fred/oz410/project/IDN/Invertible-Image-Decolorization

cd /fred/oz410/project/IDN/Invertible-Image-Decolorization


module load gcc/13.3.0
module load python/3.12.3

source /fred/oz410/venv/pytorch/bin/activate  # Activate virtual environment (if any)

JOB_NAME=$1  
python train.py