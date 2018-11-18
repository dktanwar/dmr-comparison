#!/bin/sh

./methpipe-3.4.3/bin/merge-methcounts data/sim_data_methpipe_1.meth data/sim_data_methpipe_2.meth data/sim_data_methpipe_3.meth -o data/sim_data_methpipe_grp1.meth
./methpipe-3.4.3/bin/merge-methcounts data/sim_data_methpipe_4.meth data/sim_data_methpipe_5.meth data/sim_data_methpipe_6.meth -o data/sim_data_methpipe_grp2.meth
./methpipe-3.4.3/bin/methdiff -o results/sim_data_methpipe.methdiff data/sim_data_methpipe_grp1.meth data/sim_data_methpipe_grp2.meth
./methpipe-3.4.3/bin/hmr -o results/sim_data_grp1.hmr data/sim_data_methpipe_grp1.meth
./methpipe-3.4.3/bin/hmr -o results/sim_data_grp2.hmr data/sim_data_methpipe_grp2.meth
./methpipe-3.4.3/bin/dmr results/sim_data_methpipe.methdiff results/sim_data_grp1.hmr results/sim_data_grp2.hmr results/sim_data_methpipe_dmrs_grp1 results/sim_data_methpipe_dmrs_grp2
awk -F '[:\t]' '$5 >= 10 && $6 >= 5 {print $0}' results/sim_data_methpipe_dmrs_grp1 > results/sim_data_methpipe_dmrs_grp1.filtered
awk -F '[:\t]' '$5 >= 10 && $6 >= 5 {print $0}' results/sim_data_methpipe_dmrs_grp2 > results/sim_data_methpipe_dmrs_grp2.filtered
