#!/bin/bash 

wd=$1

#loop through all files in directory

for f in $wd/*dedup.bam
do
        sbatch /users/h/g/hgreenye/scripts/bismark_scripts/extract_methyl.sh $f
done

