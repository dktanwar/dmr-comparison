##############################
## @Author : Deepak & Hana  ##
## @Date :   20181221       ##
##############################

## Makefile to compile RMarkdown file to HTML.

all: task1
task1:
	Rscript -e 'rmarkdown::render("project_report.Rmd", "html_document")' 2> ./log/log >> ./log/log && Rscript -e 'rmarkdown::render("project_report.Rmd", output_file = "project_report_rdd.html")' 2> ./log/readthedoc.log >> ./log/readthedoc.log
