read_verilog rtl.v
synth_design -top top -flatten_hierarchy full -gated_clock_conversion on -bufg 8 -fsm_extraction one_hot -resource_sharing auto -control_set_opt_threshold 2 -shreg_min_size 2 -max_bram_cascade_height 2 -max_uram_cascade_height 1 -cascade_dsp force -incremental_mode aggressive -retiming -assert
write_verilog -force new_syn_vivado.v
#创建文件路径
create_project -force sim /home/zou/vivado_test
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
