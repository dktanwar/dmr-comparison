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

# read all the data

file1_read <- fread(
  input = file1, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "1.M", "1.cov")
)

file2_read <- fread(
  input = file2, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "2.M", "2.cov")
)

file3_read <- fread(
  input = file3, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "3.M", "3.cov")
)

file4_read <- fread(
  input = file4, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "4.M", "4.cov")
)

file5_read <- fread(
  input = file5, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "5.M", "5.cov")
)

file6_read <- fread(
  input = file6, sep = "\t", data.table = F, header = F, stringsAsFactors = F,
  col.names = c("chr", "pos", "6.M", "6.cov")
)

anno <- read.table(phenoData, header = T, sep = "\t", stringsAsFactors = F)

# Make one dataframe from list of files

tab <- merge(file1_read, file2_read, by = c("chr", "pos"))
tab <- merge(tab, file3_read, by = c("chr", "pos"))
tab <- merge(tab, file4_read, by = c("chr", "pos"))
tab <- merge(tab, file5_read, by = c("chr", "pos"))
tab <- merge(tab, file6_read, by = c("chr", "pos"))


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

save(bs.nc, file = "./bsseq_neg_control.RData", compress = T)

# Extract information from the object
chr.nc <- as.character(seqnames(bs.nc))
pos.nc <- start(bs.nc)
cov.nc <- data.frame(getCoverage(bs.nc, type = "Cov"))
M.nc <- data.frame(getCoverage(bs.nc, type = "M"))

for (i in 1:ncol(cov.nc)) {
  n <- paste0("./NC_rep", i, ".bed")
  df <- data.frame(chr.nc, pos.nc, M.nc[, i], cov.nc[, i])
  fwrite(x = df, file = n, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
}

# reorder samples to create a null comparison
bs.null <- bs[, c(1, 3, 5, 2, 4, 6)]


# Set seeds to maintain reproducibility
set.seed(100)

# add 100 DMRs
bs.sim <- simDMRs(bs = bs.null, num.dmrs = 100)
bs.sim$bs <- bs.sim$bs[, c(1, 4, 2, 5, 3, 6)]

colnames(bs.sim$bs) <- str_replace(colnames(bs.nc) , "NC", "sim")
save(bs.sim, file = "./bsseq_sim_100.RData", compress = T)

dmr.ranges <- data.frame(bs.sim$gr.dmrs, stringsAsFactors = F)
sim.dmr <- data.frame(dmr.ranges, mean.cov = bs.sim$dmr.mncov, effect.size = bs.sim$delta, stringsAsFactors = F)
system("touch ./simulated_DMRS.txt.gz")
write.table(sim.dmr,
            file = gzfile("./simulated_DMRS.txt.gz", compression = 3),
            sep = "\t", quote = FALSE, row.names = FALSE
)

# Re-arrange the data
sim <- bs.sim$bs

# Extract information from the object
chr.sim <- as.character(seqnames(sim))
pos.sim <- start(sim)
cov.sim <- data.frame(getCoverage(sim, type = "Cov"))
M.sim <- data.frame(getCoverage(sim, type = "M"))

# Separate simulated data

n1 <- "./sim_rep1.bed"
n2 <- "./sim_rep2.bed"
n3 <- "./sim_rep3.bed"
n4 <- "./sim_rep4.bed"
n5 <- "./sim_rep5.bed"
n6 <- "./sim_rep6.bed"
df1 <- data.frame(chr.sim, pos.sim, M.sim[, 1], cov.sim[, 1])
df2 <- data.frame(chr.sim, pos.sim, M.sim[, 2], cov.sim[, 2])
df3 <- data.frame(chr.sim, pos.sim, M.sim[, 3], cov.sim[, 3])
df4 <- data.frame(chr.sim, pos.sim, M.sim[, 4], cov.sim[, 4])
df5 <- data.frame(chr.sim, pos.sim, M.sim[, 5], cov.sim[, 5])
df6 <- data.frame(chr.sim, pos.sim, M.sim[, 6], cov.sim[, 6])

fwrite(x = df1, file = n1, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
fwrite(x = df2, file = n2, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
fwrite(x = df3, file = n3, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
fwrite(x = df4, file = n4, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
fwrite(x = df5, file = n5, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)
fwrite(x = df6, file = n6, sep = "\t", row.names = F, col.names = F, quote = F, nThread = cores)

anno.nc <- anno[, 3:4]

write.table(anno.nc, "./anno_neg_control.txt", sep = "\t", quote = F)

anno.sim <- anno.nc %>%
  mutate_all(list(~str_replace(., "NC", "sim")))
rownames(anno.sim) <- anno.sim$names

write.table(anno.sim, "./anno_sim_data.txt", sep = "\t", quote = F)

system(paste0("pigz -11 -p ", cores, " ./*.txt"))
system(paste0("pigz -11 -p ", cores, " ./*.bed"))
