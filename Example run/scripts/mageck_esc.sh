#!/bin/bash
#chmod +x ./mageck_esc.sh && nohup ./mageck_esc.sh > ./mageck_esc.out 2>&1 &
#module load mageck/0.5.9.4
#module load anaconda && conda activate mageckenv

#count data
#mageck count -l yusa_library.csv -n escneg --sample-label "plasmid,ESC1" --fastq ERR376998.subsample.fastq  ERR376999.subsample.fastq

mageck test -k escneg.count.txt -t ESC1 -c plasmid -n esccp
