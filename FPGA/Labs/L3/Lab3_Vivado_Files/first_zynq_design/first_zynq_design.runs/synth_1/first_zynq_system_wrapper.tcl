# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.cache/wt [current_project]
set_property parent.project_path C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
set_property ip_output_repo c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/hdl/first_zynq_system_wrapper.vhd
add_files C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/first_zynq_system.bd
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_processing_system7_0_0/first_zynq_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_axi_gpio_0_0/first_zynq_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_axi_gpio_0_0/first_zynq_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_axi_gpio_0_0/first_zynq_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_rst_ps7_0_50M_0/first_zynq_system_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_rst_ps7_0_50M_0/first_zynq_system_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_rst_ps7_0_50M_0/first_zynq_system_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/ip/first_zynq_system_auto_pc_0/first_zynq_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/first_zynq_system_ooc.xdc]
set_property is_locked true [get_files C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.srcs/sources_1/bd/first_zynq_system/first_zynq_system.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top first_zynq_system_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef first_zynq_system_wrapper.dcp

catch { report_utilization -file first_zynq_system_wrapper_utilization_synth.rpt -pb first_zynq_system_wrapper_utilization_synth.pb }
