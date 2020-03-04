import os

# Configuration file check

if len(config) == 0:
	if os.path.isfile("./config.yaml"):
		configfile: "./config.yaml"
	else:
		sys.exit("Make sure there is a config.yaml file in " + os.getcwd() + " or specify one with the --configfile commandline parameter.")

data = os.path.abspath(config["DATA"]) + "/"
sim_data_dmrseq = os.path.abspath(config["SIM_DATA_DMRSEQ"]) + "/"
sim_data_wgbssimla = os.path.abspath(config["SIM_DATA_WGBSSimla"]) + "/"
cores = workflow.cores

############################## Run the workflow ##############################

include: "rules/input_functions.smk"

rule all:
	input:
		sim_data_dmrseq + "00_simulated_data/20181125-01_filter_simulated_data/output/simulated_DMRS.txt.gz"
		#config_input

############################### Workflow rules ###############################

include: "rules/data_download.smk"
include: "rules/data_simulation.smk"
include: "rules/differential_analysis.smk"
#include: "rules/plotting.smk"
