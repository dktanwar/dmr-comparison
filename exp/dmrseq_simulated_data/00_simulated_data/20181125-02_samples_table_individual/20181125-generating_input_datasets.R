## This script simulates and filters data for the benchmark with dmrseq,
## for more details check 20181125-generating_input_datasets.Rmd

## Load required libraries

library(data.table)

comm_args <- commandArgs(trailingOnly = TRUE)

# First command line argument: the path to the data folder

data_folder <- comm_args[1]

setwd(data_folder)

# Second command line argument: number of threads

cores <- comm_args[2]

# Third to eigth command line arguments: data used

# 12 samples: 6 negative control and 6 simulated
NC1 <- comm_args[3]
NC2 <- comm_args[4]
NC3 <- comm_args[5]
NC4 <- comm_args[6]
NC5 <- comm_args[7]
NC6 <- comm_args[8]
sim1 <- comm_args[9]
sim2 <- comm_args[10]
sim3 <- comm_args[11]
sim4 <- comm_args[12]
sim5 <- comm_args[13]
sim6 <- comm_args[14]


# read negative control data all together

files.nc <- c(NC1, NC2, NC3, NC4, NC5, NC6)

read.nc <- lapply(files.nc, function(x) fread(input = x, sep = "\t", data.table = F, 
                                              header = F, stringsAsFactors = F,
                                              col.names = c("chr", "pos", "M", "cov")))

names(read.nc) <- c(paste0("NC_rep", c(1:6)))

# read simulated data all together

files.sim <- c(sim1, sim2, sim3, sim4, sim5, sim6)

read.sim <- lapply(files.sim, function(x) fread(input = x, sep = "\t", data.table = F, 
                                                header = F, stringsAsFactors = F,
                                                col.names = c("chr", "pos", "M", "cov")))

names(read.sim) <- c(paste0("sim_rep", c(1:6)))

# Creating Bismark input data

bismark.nc <- lapply(read.nc, function(x){
  a <- x
  a$percent <- (a$M/a$cov) * 100
  a$Un <- a$cov - a$M
  a$pos1 <- a$pos
  return(a[, c("chr", "pos", "pos1", "percent", "M", "Un")])
})


bismark.sim <- lapply(read.sim, function(x){
  a <- x
  a$percent <- (a$M/a$cov) * 100
  a$Un <- a$cov - a$M
  a$pos1 <- a$pos
  return(a[, c("chr", "pos", "pos1", "percent", "M", "Un")])
})

## Save Bismark data

system("mkdir -p ./bismark")
for(i in 1:length(read.nc)){
  fwrite(x = bismark.nc[[i]], file = paste0("./bismark/", names(read.nc)[i], ".cov"), 
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
  
  fwrite(x = bismark.sim[[i]], file = paste0("./bismark/", names(read.sim)[i], ".cov"),
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
}

# Creating methpipe input data

methpipe.nc <- lapply(read.nc, function(x){
  a <- x
  a$strand <- "*"
  a$CG <- "CpG"
  a$percent <- (a$M/a$cov)
  return(a[, c("chr", "pos", "strand", "CG", "percent", "cov")])
})


methpipe.sim <- lapply(read.sim, function(x){
  a <- x
  a$strand <- "*"
  a$CG <- "CpG"
  a$percent <- (a$M/a$cov)
  return(a[, c("chr", "pos", "strand", "CG", "percent", "cov")])
})

# Save methpipe data

system("mkdir -p ./methpipe")
for(i in 1:length(read.nc)){
  fwrite(x = methpipe.nc[[i]], file = paste0("./methpipe/", names(read.nc)[i], ".cov"), 
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
  
  fwrite(x = methpipe.sim[[i]], file = paste0("./methpipe/", names(read.sim)[i], ".cov"),
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
}

# Creating cgmaptools input data

cgmap.nc <- lapply(read.nc, function(x){
  a <- x
  a$nuc <- "C"
  a$cont <- "CG"
  a$dinuc <- "CG"
  a$meth <- a$M/a$cov
  return(a[, c("chr", "nuc", "pos", "cont", "dinuc", "meth", "M", "cov")])
})


cgmap.sim <- lapply(read.sim, function(x){
  a <- x
  a$nuc <- "C"
  a$cont <- "CG"
  a$dinuc <- "CG"
  a$meth <- a$M/a$cov
  return(a[, c("chr", "nuc", "pos", "cont", "dinuc", "meth", "M", "cov")])
})

# Save cgmaptoolsdata

system("mkdir -p ./cgmaptools")
for(i in 1:length(read.nc)){
  fwrite(x = cgmap.nc[[i]], file = paste0("./cgmaptools/", names(read.nc)[i], ".cov"), 
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
  
  fwrite(x = cgmap.sim[[i]], file = paste0("./cgmaptools/", names(read.sim)[i], ".cov"),
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
}


# Creating dmrcaller input data

dmrcaller.nc <- lapply(read.nc, function(x){
  a <- x
  a$strand <- "+"
  a$cont <- "CG"
  a$dinuc <- "XCG"
  a$Un <- a$cov - a$M
  return(a[, c("chr", "pos", "strand", "M", "Un", "cont", "dinuc")])
})


dmrcaller.sim <- lapply(read.sim, function(x){
  a <- x
  a$strand <- "+"
  a$cont <- "CG"
  a$dinuc <- "XCG"
  a$Un <- a$cov - a$M
  return(a[, c("chr", "pos", "strand", "M", "Un", "cont", "dinuc")])
})

# Save dmrcaller data

system("mkdir -p ./dmrcaller")
for(i in 1:length(read.nc)){
  fwrite(x = dmrcaller.nc[[i]], file = paste0("./dmrcaller/", names(read.nc)[i], ".cov"), 
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
  
  fwrite(x = dmrcaller.sim[[i]], file = paste0("./dmrcaller/", names(read.sim)[i], ".cov"),
         sep = "\t", quote = F, row.names = F, col.names = F, nThread = cores)
}

# making one table with coverage and methylation values
# first for negative control

tab.nc <- Reduce(function(x, y) {
  merge(x, y, by = c("chr", "pos"))
}, read.nc)

tab.nc <- tab.nc[order(tab.nc$pos),]

tab.nc.M <- tab.nc[, grep(pattern = "chr|pos|M", x = colnames(tab.nc))]
colnames(tab.nc.M)[3:ncol(tab.nc.M)] <- names(read.nc)
fwrite(x = tab.nc.M, file = "./neg_control.M", quote = F, sep = "\t", row.names = F)


tab.nc.cov <- tab.nc[, grep(pattern = "chr|pos|cov", x = colnames(tab.nc))]
colnames(tab.nc.cov)[3:ncol(tab.nc.cov)] <- names(read.nc)
fwrite(x = tab.nc.cov, file = "./neg_control.cov", quote = F, sep = "\t", row.names = F)

# then for simulated data

tab.sim <- Reduce(function(x, y) {
  merge(x, y, by = c("chr", "pos"))
}, read.sim)

tab.sim <- tab.sim[order(tab.sim$pos),]

tab.sim.M <- tab.sim[, grep(pattern = "chr|pos|M", x = colnames(tab.sim))]
colnames(tab.sim.M)[3:ncol(tab.sim.M)] <- names(read.sim)
fwrite(x = tab.sim.M, file = "./simulated_data.M", quote = F, sep = "\t", row.names = F)


tab.sim.cov <- tab.sim[, grep(pattern = "chr|pos|cov", x = colnames(tab.sim))]
colnames(tab.sim.cov)[3:ncol(tab.sim.cov)] <- names(read.sim)
fwrite(x = tab.sim.cov, file = "./simulated_data.cov", quote = F, sep = "\t", row.names = F)

# As a final step we compress everything 

system("pigz -11 -p ", cores, " ./*")
system("pigz -11 -p ", cores, " ./*/*")