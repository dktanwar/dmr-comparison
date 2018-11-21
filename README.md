<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [STA426-project](#sta426-project)
    - [Title](#title)
    - [Methods to be compared](#methods-to-be-compared)
    - [Data:](#data)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# STA426-project

### Title
Comparison of new methods for detection of differentially methylated regions


### Methods to be compared

- [dmrseq](https://academic.oup.com/biostatistics/advance-article/doi/10.1093/biostatistics/kxy007/4899074)
- [MethGO](https://methgo.readthedocs.io/en/latest/)
- [MethPipe](http://smithlabresearch.org/software/methpipe/)
- [RADMeth](http://smithlabresearch.org/software/radmeth/)
- [methylKit](https://www.bioconductor.org/packages/devel/bioc/vignettes/methylKit/inst/doc/methylKit.html)
- [bsseq](https://bioconductor.org/packages/release/bioc/vignettes/bsseq/inst/doc/bsseq.html)


### Data:
- negative control data - two groups, each of three samples, from normal human dendritic cells ([data in GEO](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE64177))
- simulated data - simulated DMRs added to negative control by `simDMRS` function from `dmrseq` package ([docs](https://bioconductor.org/packages/release/bioc/vignettes/dmrseq/inst/doc/dmrseq.html#6_simulating_dmrs))
