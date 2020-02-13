## The function to install packages that are not installed

# Command line arguments
comm_args <- commandArgs(trailingOnly = TRUE)

# First argument: number of cores to use
cores <- comm_args[1]

usePackage <- function(pkgs) {

    # install BiocManager package
    isBiocM <- "BiocManager" %in% installed.packages()[, 1]
    if (!isBiocM) {
        install.packages("BiocManager", repos = "http://cran.rstudio.com/",
                         lib = .libPaths()[1])
    }

    # install the other packages
    isInstalled <- pkgs %in% installed.packages(lib.loc = .libPaths()[1])[, 1]
    BiocManager::install(pkgs[!isInstalled],
                         update = FALSE, dependencies = TRUE,
                         lib = .libPaths()[1], Ncpus = cores)

    pkg.load <- lapply(pkgs, FUN = function(x) {
        x[!(x %in% installed.packages(.libPaths()[1])[, "Package"])]
    })

    if (length(unlist(pkg.load)) == 0) {
        cat("All required packages are installed \n")
    } else {
        cat(unlist(pkg.load), ": failed to install")
    }

    ## Test whether packages could be loaded successfully
    suppressPackageStartupMessages(
        lapply(pkgs, library, character.only = TRUE)
    )

    sink(outtxt)
    cat("packages loaded successfully: \n",
        pkgs[pkgs %in% loadedNamespaces()])
    sink()
}


paths <- .libPaths()
print(paths)

## Install packages
pkgs.use <- c("dplyr", "plyr", "DT", "rmarkdown", "devtools", "GEOquery", "xtermStyle", "dmrseq", "data.table", "tidyverse", "bsseq")

usePackage(pkgs = pkgs.use)


## Session info
sessionInfo()
date()
