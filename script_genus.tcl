read_lib /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl {fa.v rca_rd.v}
elaborate
set_top rca_rd
syn_generic
syn_map
syn_opt

current_design rca_rd
ungroup -all -flatten 
write_netlist > rca_rd_netlist.v

report area > ../reports/syn_area.rpt
report timing > ../reports/syn_timing.rpt
report power > ../reports/syn_power.rpt
