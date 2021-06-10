connect -url tcp:127.0.0.1:3121
source C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.sdk/first_zynq_system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279A42B02A"} -index 0
loadhw C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.sdk/first_zynq_system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279A42B02A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A42B02A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A42B02A"} -index 0
dow C:/Users/anyho/FPGA/Projects/SYSC3320/Labs/Lab3/first_zynq_design/first_zynq_design.sdk/LED_test/Debug/LED_test.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A42B02A"} -index 0
con
