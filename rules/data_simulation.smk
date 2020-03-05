# Filter and simulate data from downloaded data

rule simulate_filter_data_dmrseq:
    input:
        file1 = data + "raw/GSM1565940_DC81_NI_5mC.chr18.txt.gz",
        file2 = data + "raw/GSM1565942_DC82_NI_5mC.chr18.txt.gz",
        file3 = data + "raw/GSM1565944_DC83_NI_5mC.chr18.txt.gz",
        file4 = data + "raw/GSM1565946_DC87_NI_5mC.chr18.txt.gz",
        file5 = data + "raw/GSM1565948_DC89_NI_5mC.chr18.txt.gz",
        file6 = data + "raw/GSM1565950_DC91_NI_5mC.chr18.txt.gz",
        phenoData = data + "phenoData.txt.gz",
        script = sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/20181125-filtered_simulated_data_dmrseq.R"
    output:
        expand(sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/NC_rep{n}.bed.gz", n = ['1', '2', '3', '4', '5', '6']),
        expand(sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/sim_rep{n}.bed.gz", n = ['1', '2', '3', '4', '5', '6']),
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/anno_neg_control.txt.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/anno_sim_data.txt.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/simulated_DMRS.txt.gz"
    params:
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/"
    threads:
        cores
    log:
        sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        "Rscript {input.script} {params} {threads} {input.file1} {input.file2} {input.file3} {input.file4} {input.file5} {input.file6} {input.phenoData} 2> {log} >> {log}"

# Adjust filtered and simulated data to different formats

rule input_data_format_dmrseq:
    input:
        expand(sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/NC_rep{n}.bed.gz", n = ['1', '2', '3', '4', '5', '6']),
        expand(sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/sim_rep{n}.bed.gz", n = ['1', '2', '3', '4', '5', '6'])
    output:
        expand(sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/{tool}/NC_rep{n}.cov.gz", tool = ['bismark', 'cgmaptools', 'dmrcaller', 'methpipe'], n = ['1', '2', '3', '4', '5', '6'])
        expand(sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/{tool}/sim_rep{n}.cov.gz", tool = ['bismark', 'cgmaptools', 'dmrcaller', 'methpipe'], n = ['1', '2', '3', '4', '5', '6']),
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/neg_control.cov.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/neg_control.M.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/simulated_data.cov.gz",
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/output/simulated_data.M.gz"
    log:
        sim_data_dmrseq + "00_simulated_data/20181125-02_samples_table_individual/log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript -e 'rmarkdown::render("{input.script}", "html_document")' 2> {log} >> {log}
        """
