rule bsseq:
    input:
        sim_data + "20181125-02_samples_table_individual/output/bismark/",
        sim_data + "20181125-01_filter_simulated_data/output/anno_neg_control.txt.gz",
        sim_data + "20181125-01_filter_simulated_data/output/anno_sim_data.txt.gz",
        script = analysis + "20181206-01_bsseq/bsseq.Rmd"
    output:
        analysis + "20181206-01_bsseq/bsseq.html",
        analysis + "20181206-01_bsseq/output/bsseq_dmr_neg_control.txt.gz",
        analysis + "20181206-01_bsseq/output/bsseq_dmr_sim_data.txt.gz"
    log:
        analysis + "20181206-01_bsseq/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """

rule methpipe:
    input:
        sim_data + "20181125-02_samples_table_individual/output/methpipe/",
        script = analysis + "20181206-02_MethPipe/methpipe.Rmd"
    output:
        analysis + "20181206-02_MethPipe/output/methpipe_dmr_sim_data.txt.gz",
        analysis + "20181206-02_MethPipe/output/methpipe_dmr_neg_control.txt.gz"
    log:
        analysis + "20181206-02_MethPipe/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """
