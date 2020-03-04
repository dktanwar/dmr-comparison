## Script to download the data used for the benchmark,
## for more details check data_download_and_filter.html

comm_args <- commandArgs(trailingOnly = TRUE)

# Only one argument needed: the path to the data folder

data_folder <- comm_args[1]

setwd(data_folder)

## Load required libraries

library(GEOquery)

## Get files

sfiles <- getGEOSuppFiles("GSE64177", makeDirectory = F)

# Extract the "Not Infected (NI)" files from `tar` and remove the `tar` file

system("tar -xvf GSE64177_RAW.tar  --wildcards --no-anchored '*NI*' && rm -rf GSE64177_RAW.tar")

# Rename data and move it to new folder called raw

files <- list.files(path = ".", pattern = ".gz", full.names = T)

tmp <- lapply(files, function(x) {
  n <- paste0(strsplit(basename(x), "\\.")[[1]][1], ".chr18.txt.gz")
  system(paste(
    "zcat", x, "| grep chr18 | pigz -11 -p 16 >", n,
    "&& rm -rf", x,
    "&& mkdir -p raw && mv *.chr18* ./raw/"
  ))
})

# Save dataframe with information about the samples 

raw.files <- list.files(path = "./raw", pattern = ".gz", full.names = T)
pData <- data.frame(files = basename(raw.files), 
                    files_sl = paste0("NC_rep", 1:length(raw.files), ".bed.gz"),
                    names = paste0("NC_rep", 1:length(raw.files)),
                    Group = rep(c("Group1", "Group2"), (length(raw.files)/2)),
                    stringsAsFactors = F)

rownames(pData) <- pData$names

write.table(pData, gzfile("phenoData.txt.gz"), quote = F, sep = "\t")