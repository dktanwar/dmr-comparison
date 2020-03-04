import os

# Configuration file check

if len(config) == 0:
	if os.path.isfile("./config.yaml"):
		configfile: "./config.yaml"
	else:
		sys.exit("Make sure there is a config.yaml file in " + os.getcwd() + " or specify one with the --configfile commandline parameter.")

data = os.path.normpath(config["DATA"]) + "/"
sim_data_dmrseq = os.path.normpath(config["SIM_DATA_DMRSEQ"]) + "/"
sim_data_wgbssimla = os.path.normpath(config["SIM_DATA_WGBSSimla"]) + "/"

############################## Run the workflow ##############################

include: "rules/input_functions.smk"

rule all:
	input:
		config_input

############################### Workflow rules ###############################

include: "rules/data_download.smk"
include: "rules/data_simulation.smk"
include: "rules/differential_analysis.smk"
#include: "rules/plotting.smk"
