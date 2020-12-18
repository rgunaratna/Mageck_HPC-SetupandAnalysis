#!/bin/bash

# run the following command to run the shell file
# chmod +x ./mageck_esc.sh && nohup ./mageck_esc.sh > ./mageck_esc.out 2>&1 &

# Mageck pipeline tutorial: https://sourceforge.net/p/mageck/wiki/Home/#the-second-tutorial-starting-from-raw-fastq-files

# Load the required modules to run the Mageck count and test analyses
module load mageck/0.5.9.4
module load anaconda

# copy the yml file to a location that you'd run this shell file


# Make a python virtual environment to enclose all the required modules in a stable locus
# These line should be run only one time during the setup process

conda env create -f mageckenv.yml
conda activate mageckenv

# Map and count data for downstream analysis
# mageck count -l yusa_library.csv -n escneg --sample-label "plasmid,ESC1" --fastq ERR376998.subsample.fastq  ERR376999.subsample.fastq

# Pairwise comparison to generate files to feed into MageckFlute pipeline in R
# mageck test -k escneg.count.txt -t ESC1 -c plasmid -n esccp


# deactivate environment when done with the analysis
conda deactivate