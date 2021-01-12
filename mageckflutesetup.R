#!/usr/bin/Rscript
#chmod +x mageckflutesetup.R && Rscript --no-save --no-restore mageckflutesetup.R > mageckflutesetup.out 2>&1 &

# install.packages("BiocManager", repos = "http://lib.stat.cmu.edu/R/CRAN/", lib = "/home/rameshg/.conda/envs/mageckenv/lib/R/library/")
# print("Installed BiocManager")
suppressWarnings(suppressMessages(library("BiocManager")))
# print("Loaded BiocManager")
# install.packages("devtools", repos = "http://lib.stat.cmu.edu/R/CRAN/", lib = "/home/rameshg/.conda/envs/mageckenv/lib/R/library/")
# print("Installed devtools")
# suppressWarnings(suppressMessages(library("devtools")))
# print("Loaded devtools")
BiocManager::install("MAGeCKFlute")
print("Installed MAGeCKFlute")
sessionInfo()



