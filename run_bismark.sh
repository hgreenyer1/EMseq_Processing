#!/bin/bash

#SBATCH --nodes=1                
#SBATCH --ntasks-per-node=1  
#SBATCH --cpus-per-task=12
#SBATCH -t 1-06:00
#SBATCH -p bluemoon                           
#SBATCH --mem=20G                       
#SBATCH -o bismark_pe_%j.out                 
#SBATCH -e bismark_pe_%j.err                
#SBATCH --mail-user=hgreenyer@med.uvm.edu  

#run bismark provided working directory of fastq files and desired output directory
#assumes PE

wd=$1
out_dir=$2

#suffixes
suf_f1="_1_val_1.fq.gz"
suf_f2="_2_val_2.fq.gz"

#loop through files
for f1 in $wd/*_1_val_1.fq.gz
do
        f2="$wd/$(basename -- ${f1/$suf_f1/$suf_f2})"

        sbatch bismark -X 650 --un --genome /users/h/g/hgreenye/references/bismark/hg38/ --output_dir $out_dir -1 $f1 -2 $f2
done


