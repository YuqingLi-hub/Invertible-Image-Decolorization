#!/bin/bash
#SBATCH --job-name=IDNOri00002
#SBATCH --output=/fred/oz094/yqli/output/IDN/IDNOri00002-out.txt
#SBATCH --error=/fred/oz094/yqli/output/IDN/IDNOri00002-error.txt
#SBATCH --ntasks=1
#SBATCH -c 8
#SBATCH --mem=8G
#SBATCH --time=05:00:00
#SBATCH --gres=gpu:2   # Request GPU if needed
#SBATCH -A oz094
#SBATCH -D /home/yuqli/Recreation/Invertible-Image-Decolorization

cd /home/yuqli/Recreation/Invertible-Image-Decolorization

# module load gcc/11.3.0 openmpi/4.1.4
module load gcc/13.3.0
# gcc/11.3.0 openmpi/4.1.4
module load python/3.12.3
# 3.9.21
# module load cuda/11.7.0
# module load pytorch/1.12.1-cuda-11.7.0

source /fred/oz410/venv/pytorch/bin/activate  # Activate virtual environment (if any)

python train.py