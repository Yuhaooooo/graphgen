#!/bin/bash

#SBATCH --partition=SCSEGPU_UG 
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --mem=8000M 
#SBATCH --job-name=TestJob 
#SBATCH --output=/home/FYP/heyu0012/results/graphgen/first/test.out 
#SBATCH --error=/home/FYP/heyu0012/results/graphgen/first/testError.err 

GraphgenSavePath='/home/FYP/heyu0012/results/graphgen/first/'
DatasetPath='/home/FYP/heyu0012/projects/graphgen/datasets/'
module load anaconda 
source activate graphgen 
export GraphgenSavePath=$GraphgenSavePath
export DatasetPath=$DatasetPath

python /home/FYP/heyu0012/projects/graphgen/main.py


