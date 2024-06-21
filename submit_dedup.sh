#!/bin/bash 

#runs bismark deduplication for all bam files in the provided directory 

wd=$1 

#loop through all files in directory 

for f in $wd/*.bam 
do 
	sbatch /users/h/g/hgreenye/scripts/bismark_scripts/dedup.sh $f 
done 
