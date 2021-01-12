#!/usr/bin/Rscript
#chmod +x mageckflute_mle.R && Rscript --no-save --no-restore mageckflute_mle.R > mageckflute_mle.out 2>&1 &

# install.packages("BiocManager", repos = "http://lib.stat.cmu.edu/R/CRAN/", lib = "/home/rameshg/.conda/envs/mageckenv/lib/R/library/")
# print("Installed BiocManager")
suppressWarnings(suppressMessages(library("BiocManager")))
# cat("Loaded BiocManager")
# install.packages("devtools", repos = "http://lib.stat.cmu.edu/R/CRAN/", lib = "/home/rameshg/.conda/envs/mageckenv/lib/R/library/")
# print("Installed devtools")
# suppressWarnings(suppressMessages(library("devtools")))
# print("Loaded devtools")
if (!requireNamespace("MAGeCKFlute", quietly = TRUE)){
  BiocManager::install("MAGeCKFlute")
  print("Installed MAGeCKFlute")
}

genesumfile<- list.files(pattern="*.gene.summary.txt")
if (length(genesumfile)>0){
  FluteMLE(gene_summary = genesumfile, ctrlname = c("pretx", "d9.utx"), treatname = c("d3.sal","d9.sal"), prefix="OL", organism = "mmu", enrich_kegg = "GSEA")
}

cat(paste0("MLE analysis is done. Files are at ", getwd()))
save.image("RBP_mle.RData")
sessionInfo()
