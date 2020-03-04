rule bsseq_dmrseq:
    input:
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/bismark/",
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/anno_neg_control.txt.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/anno_sim_data.txt.gz",
        script = sim_data_dmrseq + "01_bsseq/bsseq.Rmd"
    output:
        sim_data_dmrseq + "01_bsseq/bsseq.html",
        sim_data_dmrseq + "01_bsseq/output/bsseq_dmr_neg_control.txt.gz",
        sim_data_dmrseq + "01_bsseq/output/bsseq_dmr_sim_data.txt.gz"
    log:
        sim_data_dmrseq + "01_bsseq/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """
