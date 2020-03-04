## This script simulates and filters data for the benchmark with dmrseq,
## for more details check 20181125-filtered_simulated_data_dmrseq.Rmd

## Load required libraries

library(dmrseq)
library(data.table)
library(tidyverse)
library(dplyr)

comm_args <- commandArgs(trailingOnly = TRUE)

# First command line argument: the path to the data folder

data_folder <- comm_args[1]

setwd(data_folder)

# Second command line argument: number of threads

cores <- comm_args[2]

# Third to eigth command line arguments: data used

# 6 samples
file1 <- comm_args[3]
file2 <- comm_args[4]
file3 <- comm_args[5]
file4 <- comm_args[6]
file5 <- comm_args[7]
file6 <- comm_args[8]

files <- c(file1, file2, file3, file4, file5, file6)

# phenoData
phenoData <- comm_args[9]

# read all the data in a loop

read.files <- lapply(files, function(x) {
  a <- fread(
    input = x, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
    col.names = c("chr", "pos", "M", "cov")
  )
  colnames(a)[3:4] <- paste(strsplit(x, "\\.|/")[[1]][4], colnames(a)[3:4], sep = ".")
  return(a)
})

anno <- read.table(phenoData, header = T, sep = "\t", stringsAsFactors = F)

# Make one dataframe fromlist of files
tab <- Reduce(function(x, y) {
  merge(x, y, by = c("chr", "pos"))
}, read.files)

# Generate BSseq object
bs <- BSseq(
  chr = tab$chr, pos = tab$pos,
  M = data.matrix(tab[, grep(pattern = ".M", x = colnames(tab))]),
  Cov = data.matrix(tab[, grep(pattern = ".cov", x = colnames(tab))]),
  pData = anno, sampleNames = anno$names
)


# Keeping loci with with coverage at least 5 in at least two samples in each group
loci.idx <- which(rowSums(getCoverage(bs[, pData(bs)$Group == "Group1"], type = "Cov") >= 5) >= 2 &
                    rowSums(getCoverage(bs[, pData(bs)$Group == "Group2"], type = "Cov") >= 5) >= 2)

bs.nc <- bs[loci.idx, ]

system("touch ./output/bsseq_neg_control.RData")
save(bs.nc, file = "./output/bsseq_neg_control.RData", compress = T)

# Extract information from the object
chr.nc <- as.character(seqnames(bs.nc))
pos.nc <- start(bs.nc)
cov.nc <- data.frame(getCoverage(bs.nc, type = "Cov"))
M.nc <- data.frame(getCoverage(bs.nc, type = "M"))

for (i in 1:ncol(cov.nc)) {
  n <- paste0("./output/NC_rep", i, ".bed")
  df <- data.frame(chr.nc, pos.nc, M.nc[, i], cov.nc[, i])
  fwrite(x = df, file = n, sep = "\t", row.names = F, col.names = F, quote = F)
}

# reorder samples to create a null comparison
bs.null <- bs[, c(1, 3, 5, 2, 4, 6)]


# Set seeds to maintain reproducibility
set.seed(100)

# add 100 DMRs
bs.sim <- simDMRs(bs = bs.null, num.dmrs = 100)
bs.sim$bs <- bs.sim$bs[, c(1, 4, 2, 5, 3, 6)]

colnames(bs.sim$bs) <- str_replace(colnames(bs.nc) , "NC", "sim")
system("touch ./output/bsseq_sim_100.RData")
save(bs.sim, file = "./output/bsseq_sim_100.RData", compress = T)

dmr.ranges <- data.frame(bs.sim$gr.dmrs, stringsAsFactors = F)
sim.dmr <- data.frame(dmr.ranges, mean.cov = bs.sim$dmr.mncov, effect.size = bs.sim$delta, stringsAsFactors = F)
system("touch ./output/simulated_DMRS.txt.gz")
write.table(sim.dmr,
            file = gzfile("./output/simulated_DMRS.txt.gz", compression = 3),
            sep = "\t", quote = FALSE, row.names = FALSE
)

# Re-arrange the data
sim <- bs.sim$bs

# Extract information from the object
chr.sim <- as.character(seqnames(sim))
pos.sim <- start(sim)
cov.sim <- data.frame(getCoverage(sim, type = "Cov"))
M.sim <- data.frame(getCoverage(sim, type = "M"))

for (i in 1:ncol(cov.sim)) {
  n <- paste0("./output/sim_rep", i, ".bed")
  df <- data.frame(chr.sim, pos.sim, M.sim[, i], cov.sim[, i])
  fwrite(x = df, file = n, sep = "\t", row.names = F, col.names = F, quote = F)
}

anno.nc <- anno[, 3:4]

write.table(anno.nc, "./output/anno_neg_control.txt", sep = "\t", quote = F)

anno.sim <- anno.nc %>%
  mutate_all(funs(str_replace(., "NC", "sim")))
rownames(anno.sim) <- anno.sim$names

write.table(anno.sim, "./output/anno_sim_data.txt", sep = "\t", quote = F)

system(paste0("pigz -11 -p ", cores, " ./output/*.txt"))
system(paste0("pigz -11 -p ", cores, " ./output/*.bed"))
