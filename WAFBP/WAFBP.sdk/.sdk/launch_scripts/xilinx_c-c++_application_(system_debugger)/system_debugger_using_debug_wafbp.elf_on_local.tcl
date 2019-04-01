connect -url tcp:127.0.0.1:3121
source F:/digilent/WAFBP/Walking_assistant_for_blind_people_v1/WAFBP/WAFBP.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819F4A"} -index 0
loadhw -hw F:/digilent/WAFBP/Walking_assistant_for_blind_people_v1/WAFBP/WAFBP.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819F4A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819F4A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819F4A"} -index 0
dow F:/digilent/WAFBP/Walking_assistant_for_blind_people_v1/WAFBP/WAFBP.sdk/WAFBP/Debug/WAFBP.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819F4A"} -index 0
con
