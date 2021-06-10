# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.cache/wt [current_project]
set_property parent.project_path C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
set_property ip_output_repo c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.srcs/sources_1/new/FullAdder.vhd
  C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.srcs/sources_1/new/Adder.vhd
  C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.srcs/sources_1/new/Top_adder.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.srcs/constrs_1/new/Zybo_constraints.xdc
set_property used_in_implementation false [get_files C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/FullAdder/FullAdder.srcs/constrs_1/new/Zybo_constraints.xdc]


synth_design -top Top_adder -part xc7z010clg400-1


write_checkpoint -force -noxdef Top_adder.dcp

catch { report_utilization -file Top_adder_utilization_synth.rpt -pb Top_adder_utilization_synth.pb }
