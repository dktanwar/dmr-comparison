import os

# Configuration file check

if len(config) == 0:
  if os.path.isfile("./config.yaml"):
    configfile: "./config.yaml"
else:
    sys.exit("Make sure there is a config.yaml file in " + os.getcwd() + " or specify one with the --configfile commandline parameter.")

data = os.path.normpath(config["DATA"]) + "/"
sim_data = os.path.normpath(config["SIM_DATA"]) + "/"
analysis = os.path.normpath(config["ANALYSIS"]) + "/"
cores = config["CORES"]

############################## Run the workflow ##############################

rule all:
    input:
        analysis + "20181206-01_bsseq/bsseq.html",
        analysis + "20181206-02_MethPipe/methpipe.html"

############################### Workflow rules ###############################

include: "rules/data_download.smk"
include: "rules/data_simulation.smk"
include: "rules/differential_analysis.smk"
#include: "rules/plotting.smk"
