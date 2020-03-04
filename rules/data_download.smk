# Download the starting dataset with dmrseq

rule dmrseq_data_download:
    input:
        data + "data_download_and_filter.Rmd"
    output:
        data + "data_download_and_filter.html"
    log:
        data + "log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input}", "html_document")' 2> {log} >> {log}
        """
