import os

# Configuration file check

if len(config) == 0:
  if os.path.isfile("./config.yaml"):
    configfile: "./config.yaml"
else:
    sys.exit("Make sure there is a config.yaml file in " + os.getcwd() + " or specify one with the --configfile commandline parameter.")

data = os.path.normpath(config["DATA"]) + "/"

############################## Run the workflow ##############################

rule all:
    input:
        data + "data_download_and_filter.html"

############################### Workflow rules ###############################

include: "rules/data_download.smk"
#include: "rules/data_simulation.smk"
#include: "rules/differential_analysis.smk"
#include: "rules/plotting.smk"
