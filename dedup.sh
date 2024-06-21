#!/bin/bash 
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8 


deduplicate_bismark --bam --paired $1
