# Function to define the input based on the config file status

def config_input(wildcards):
	input = []
	if config["DMRSEQ_SIMULATION"]:
		if config["BSSEQ"]:
			input.extend(expand(sim_data_dmrseq + "01_bsseq/bsseq.html"))
		if config["CGMAPTOOLS"]:
			input.extend(expand(sim_data_dmrseq + "03_CGmapTools/cgmaptools.html"))
		if config["DEFIANT"]:
			input.extend(expand(sim_data_dmrseq + "04_defiant/defiant.html"))
		if config["DMRCALLER"]:
			input.extend(expand(sim_data_dmrseq + "07_DMRcaller/dmrcaller.html"))
		if config["DMRSEQ"]:
			input.extend(expand(sim_data_dmrseq + "05_dmrseq/dmrseq.html"))
		if config["METHPIPE"]:
			input.extend(expand(sim_data_dmrseq + "02_MethPipe/methpipe.html"))
		if config["METHYLKIT"]:
			input.extend(expand(sim_data_dmrseq + "06_methylKit/methylKit.html"))
	if config["WGBSSimla_SIMULATION"]:
		if config["BSSEQ"]:
			input.extend(expand(sim_data_wgbssimla + "01_bsseq/bsseq.html"))
		if config["CGMAPTOOLS"]:
			input.extend(expand(sim_data_wgbssimla + "03_CGmapTools/cgmaptools.html"))
		if config["DEFIANT"]:
			input.extend(expand(sim_data_wgbssimla + "04_defiant/defiant.html"))
		if config["DMRCALLER"]:
			input.extend(expand(sim_data_wgbssimla + "07_DMRcaller/dmrcaller.html"))
		if config["DMRSEQ"]:
			input.extend(expand(sim_data_wgbssimla + "05_dmrseq/dmrseq.html"))
		if config["METHPIPE"]:
			input.extend(expand(sim_data_wgbssimla + "02_MethPipe/methpipe.html"))
		if config["METHYLKIT"]:
			input.extend(expand(sim_data_wgbssimla + "06_methylKit/methylKit.html"))
	print(input)
	return input
