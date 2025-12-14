read library -liberty /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read design -verilog rca_rd.v -golden
read design -verilog rca_rd_netlist.v -revised
set system mode lec
compare
exit
