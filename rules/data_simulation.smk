rule simulate_filter_data:
    input:
        data + "data_download_and_filter.html",
        script = sim_data + "20181125-01-filter_simulated_data/20181125-filtered_simulated_data_dmrseq.Rmd"
    output:
        sim_data + "20181125-01_filter_simulated_data/20181125-filtered_simulated_data_dmrseq.html"
    log:
        sim_data + "20181125-01-filter_simulated_data/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """
