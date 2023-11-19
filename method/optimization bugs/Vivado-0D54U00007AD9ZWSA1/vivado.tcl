read_verilog rtl.v
synth_design -top top
write_verilog -force syn_vivado.v
#创建文件路径
create_project -force sim /home/zpy/test/vivado_test
#添加综合文件
add_files -norecurse syn_vivado.v
#添加激励文件
add_files -fileset sim_1 -norecurse vivado_testbench.v
set_property is_global_include true [get_files syn_vivado.v ]
import_files -force -norecurse
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
set_property top testbench [get_fileset sim_1]
set_property top_lib xil_defaultlib  [get_fileset sim_1]
launch_simulation
