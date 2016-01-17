# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/julian3/Vivado/Synth/Synth.cache/wt [current_project]
set_property parent.project_path /home/julian3/Vivado/Synth/Synth.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  /home/julian3/Vivado/Synth/Synth.srcs/sources_1/new/clk_div.v
  /home/julian3/Vivado/Synth/Synth.srcs/sources_1/imports/new/oscillator.v
  /home/julian3/Vivado/Synth/Synth.srcs/sources_1/imports/new/i2s_tx.v
  /home/julian3/Vivado/Synth/Synth.srcs/sources_1/new/synth_top.v
}
read_xdc /home/julian3/Vivado/Synth/Synth.srcs/constrs_1/imports/constraints/Basys3_Master.xdc
set_property used_in_implementation false [get_files /home/julian3/Vivado/Synth/Synth.srcs/constrs_1/imports/constraints/Basys3_Master.xdc]

synth_design -top synth_top -part xc7a35tcpg236-1
write_checkpoint -noxdef synth_top.dcp
catch { report_utilization -file synth_top_utilization_synth.rpt -pb synth_top_utilization_synth.pb }