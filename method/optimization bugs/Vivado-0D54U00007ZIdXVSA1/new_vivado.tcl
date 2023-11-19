read_verilog rtl.v
synth_design -top top -flatten_hierarchy none -gated_clock_conversion on -bufg 15 -directive AreaMapLargeShiftRegToBRAM -fsm_extraction sequential -resource_sharing auto -control_set_opt_threshold 33 -shreg_min_size 50 -max_bram 17 -max_uram 28 -max_bram_cascade_height 2 -max_uram_cascade_height 34 -cascade_dsp auto -incremental_mode off -assert -retiming -no_lc    
write_verilog -force new_syn_vivado.v
#创建文件路径
create_project -force sim ./vivado_test
#添加综合文件
add_files -norecurse new_syn_vivado.v
#添加激励文件
add_files -fileset sim_1 -norecurse new_vivado_testbench.v
set_property is_global_include true [get_files new_syn_vivado.v ]
import_files -force -norecurse
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
set_property top testbench [get_fileset sim_1]
set_property top_lib xil_defaultlib  [get_fileset sim_1]
launch_simulation
