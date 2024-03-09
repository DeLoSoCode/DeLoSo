import os
import shutil
from datetime import datetime
from DynSwarmforvivado import main
import subprocess
import time


# Get the current timestamp
starttime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
print("start fuzzing...")

# Check if the directory exists
synth_directory_path = "/home/baseline/DynSwarm/synth"
if os.path.exists(synth_directory_path):
    # If the directory exists, remove it and create a new one
    shutil.rmtree(synth_directory_path)
    os.mkdir(synth_directory_path)
else:
    # If the directory does not exist, create a new one
    os.mkdir(synth_directory_path)

wrong_directory_path="/home/baseline/DynSwarm/Wrong_case"
if os.path.exists(wrong_directory_path):
    shutil.rmtree(wrong_directory_path)
    os.mkdir(wrong_directory_path)
else:
    os.mkdir(wrong_directory_path)

check_directory_path="/home/baseline/DynSwarm/check"
if os.path.exists(check_directory_path):
    shutil.rmtree(check_directory_path)
    os.mkdir(check_directory_path)
else:
    os.mkdir(check_directory_path)

files_path="/home/baseline/example"
files = os.listdir(files_path)

for filename in files:
    print(filename)
    sfile = os.path.splitext(filename)[0]
    test_folder_path = f"{synth_directory_path}/test_{sfile}"
    os.mkdir(test_folder_path)
    rtl_path = f"{files_path}/{filename}/simulation_vivado/rtl.v"
    result = main(rtl_path)
    len_result = len(result)
    print(len_result)
    for i in range(len_result):        
        new_result = result[i]
        print(new_result)
        test_case_folder_path = f"{test_folder_path}/test_{sfile}-{i}"
        os.mkdir(test_case_folder_path)
        shutil.copytree(f"{files_path}/{filename}/simulation_vivado", f"{test_case_folder_path}/simulation_vivado")
        shutil.copy("/home/DeLoSo/compare.py", f"{test_case_folder_path}/simulation_vivado")
        os.chdir(f"{test_case_folder_path}/simulation_vivado")

        with open('rtl.v', 'r') as file:
            lines = file.readlines()
        lines.insert(0, '(*use_dsp48="no"*)(*use_dsp="no"*)\n')
        with open('rtl.v', 'w') as file:
            file.writelines(lines)

        shutil.copy("vivado_testbench.v", "new_vivado_testbench.v")
        with open('new_vivado_testbench.v', 'r') as file:
            lines = file.readlines()
        lines[5] = '`include "new_syn_vivado.v"\n'
        with open('new_vivado_testbench.v', 'w') as file:
            file.writelines(lines)
            
        with open('new_vivado.tcl', 'w') as tcl_file:
            tcl_file.write(f'read_verilog rtl.v\n')
            tcl_file.write(f'{new_result}\n')
            tcl_file.write(f'write_verilog -force new_syn_vivado.v\n')
            tcl_file.write(f'create_project -force sim /home/zou/vivado_test\n')
            tcl_file.write(f'add_files -norecurse new_syn_vivado.v\n')
            tcl_file.write(f'add_files -fileset sim_1 -norecurse new_vivado_testbench.v\n')
            tcl_file.write(f'set_property is_global_include true [get_files new_syn_vivado.v ]\n')
            tcl_file.write(f'import_files -force -norecurse\n')
            tcl_file.write(f'update_compile_order -fileset sources_1\n')
            tcl_file.write(f'update_compile_order -fileset sim_1\n')
            tcl_file.write(f'set_property top testbench [get_fileset sim_1]\n')
            tcl_file.write(f'set_property top_lib xil_defaultlib  [get_fileset sim_1]\n')
            tcl_file.write(f'launch_simulation\n')

        with open('output1.txt', 'w') as output_file:
            subprocess.run(["vivado", "-mode", "batch", "-source", "new_vivado.tcl"], stdout=output_file)
        
        start_keyword = "wave_config"
        end_keyword = "called"
        with open('output1.txt', 'r') as input_file:
            lines = input_file.readlines()
        with open('file1.txt', 'w') as output_file:
            inside_block = False
            for line in lines:
                if start_keyword in line:
                    inside_block = True
                elif end_keyword in line:
                    inside_block = False
                elif inside_block:
                    output_file.write(line)

        var = subprocess.call("echo $?", shell=True)
        if var != 0:
            print("ERROR:")
            os.makedirs(f"{wrong_directory_path}/test_{sfile}-{i}")
            shutil.copytree(test_case_folder_path, f"{wrong_directory_path}/test_{sfile}-{i}/simulation_vivado")
        else:
            print("equivalence cheak")
            with open('vivado.tcl', 'w') as tcl_file:
                tcl_file.write("read_verilog rtl.v\n")
                tcl_file.write("synth_design -top top\n")
                tcl_file.write("write_verilog -force syn_vivado.v\n")
                tcl_file.write(f'create_project -force sim /home/zou/vivado_test\n')
                tcl_file.write("add_files -norecurse syn_vivado.v\n")
                tcl_file.write("add_files -fileset sim_1 -norecurse vivado_testbench.v\n")
                tcl_file.write("set_property is_global_include true [get_files syn_vivado.v ]\n")
                tcl_file.write("import_files -force -norecurse\n")
                tcl_file.write("update_compile_order -fileset sources_1\n")
                tcl_file.write("update_compile_order -fileset sim_1\n")
                tcl_file.write("set_property top testbench [get_fileset sim_1]\n")
                tcl_file.write("set_property top_lib xil_defaultlib [get_fileset sim_1]\n")
                tcl_file.write("launch_simulation\n")

            with open('output2.txt', 'w') as output_file:
                subprocess.run(["vivado", "-mode", "batch", "-source", "vivado.tcl"], stdout=output_file)

            with open('output2.txt', 'r') as input_file:
                lines = input_file.readlines()
            with open('file2.txt', 'w') as output_file:
                inside_block = False
                for line in lines:
                    if start_keyword in line:
                        inside_block = True
                    elif end_keyword in line:
                        inside_block = False
                    elif inside_block:
                        output_file.write(line)

            with open('output3.txt', 'a') as output_file:
                subprocess.run(["python", "compare.py"], stdout=output_file, stderr=subprocess.PIPE, text=True, check=True)

            if "number different" in open('output3.txt').read():
                os.makedirs(f"{check_directory_path}/test_{sfile}-{i}")
                shutil.copytree(test_case_folder_path, f"{check_directory_path}/test_{sfile}-{i}/simulation_vivado")
            else:
                print("equivalence cheak pass")
    
