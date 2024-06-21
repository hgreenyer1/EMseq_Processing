#!/bin/bash 

#submission script to convert bismark output files in a directory to bedgraphs 
#output file name cannot include path  

wd=$1
out_dir=$2

#loop through all files in directory

suf_in=".deduplicated.txt.gz"
suf_out=".bedGraph"

for f in $wd/*deduplicated.txt.gz
do
	f_out="$(basename -- ${f/$suf_in/$suf_out})"
        sbatch /users/h/g/hgreenye/scripts/bismark_scripts/get_bedgraphs.sh $f $f_out $out_dir 
done

