#!/bin/bash
#SBATCH --job-name=IDNOri00003
#SBATCH --output=/fred/oz094/yqli/output/IDN/IDNOri00003-out.txt
#SBATCH --error=/fred/oz094/yqli/output/IDN/IDNOri00003-error.txt
#SBATCH --ntasks=1
#SBATCH -c 8
#SBATCH --mem=8G
#SBATCH --time=30:00:00
#SBATCH --gres=gpu:2   # Request GPU if needed
#SBATCH -A oz094
#SBATCH -D /home/yuqli/Recreation/Invertible-Image-Decolorization

cd /home/yuqli/Recreation/Invertible-Image-Decolorization


module load gcc/13.3.0
module load python/3.12.3

source /fred/oz410/venv/pytorch/bin/activate  # Activate virtual environment (if any)

python train.py