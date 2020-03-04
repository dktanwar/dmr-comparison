# Download the starting dataset with dmrseq

rule dmrseq_data_download:
    input:
        data + "data_download_and_filter.R"
    output:
        data + "raw/GSM1565940_DC81_NI_5mC.chr18.txt.gz",
        data + "raw/GSM1565942_DC82_NI_5mC.chr18.txt.gz",
        data + "raw/GSM1565944_DC83_NI_5mC.chr18.txt.gz",
        data + "raw/GSM1565946_DC87_NI_5mC.chr18.txt.gz",
        data + "raw/GSM1565948_DC89_NI_5mC.chr18.txt.gz",
        data + "raw/GSM1565950_DC91_NI_5mC.chr18.txt.gz",
        data + "phenoData.txt.gz"
    log:
        data + "log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        "Rscript {input} 2> {log} >> {log}"
