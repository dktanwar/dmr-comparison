##############################
## @Author : Deepak Tanwar  ##
## @Date :   20190108       ##
##############################

## Makefile to compile RMarkdown file to HTML.

all: task1
task1:
	Rscript -e 'rmarkdown::render("coverage_plots.Rmd", "html_document")' 2> log >> log
