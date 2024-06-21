#!/bin/bash 
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=4
#SBATCH --mem=62G 

#bismark methylation extractor 

bismark_methylation_extractor --parallel 3 --gzip -p --merge_non_CpG --bedgraph --no_overlap $1
