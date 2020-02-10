# Filter and simulate data from downloaded data

rule simulate_filter_data:
    input:
        data + "data_download_and_filter.html",
        script = sim_data + "20181125-01_filter_simulated_data/20181125-filtered_simulated_data_dmrseq.Rmd"
    output:
        sim_data + "20181125-01_filter_simulated_data/20181125-filtered_simulated_data_dmrseq.html",
        sim_data + "20181125-01_filter_simulated_data/output/anno_neg_control.txt.gz",
        sim_data + "20181125-01_filter_simulated_data/output/anno_sim_data.txt.gz"
    log:
        sim_data + "20181125-01_filter_simulated_data/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """

# Adjust filtered and simulated data to different formats

rule input_data_format:
    input:
        sim_data + "20181125-01_filter_simulated_data/20181125-filtered_simulated_data_dmrseq.html",
        script = sim_data + "20181125-02_samples_table_individual/20181125-generate_input_datasets.Rmd"
    output:
        sim_data + "20181125-02_samples_table_individual/20181125-generate_input_datasets.html",
        sim_data + "20181125-02_samples_table_individual/output/bismark/",
        sim_data + "20181125-02_samples_table_individual/output/cgmaptools/",
        sim_data + "20181125-02_samples_table_individual/output/dmrcaller/",
        sim_data + "20181125-02_samples_table_individual/output/methpipe/",
    log:
        sim_data + "20181125-02_samples_table_individual/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """
