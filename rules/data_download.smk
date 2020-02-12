# Download the starting dataset

rule dmrseq_data_download:
    input:
        "exp/pkginstall_state.txt",
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

rule install_R_pkg:
    input:
        "scripts/install_pkgs.R"
    output:
        "exp/pkginstall_state.txt"
    log:
        "exp/pkginstall_state.log"
    conda:
        "../envs/environment_R.yaml"
    shell:
        """
        Rscript {input} 2> {log} >> {log}
        """
