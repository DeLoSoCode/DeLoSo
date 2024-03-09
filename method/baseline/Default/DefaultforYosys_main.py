import os
import shutil
from datetime import datetime
import subprocess
import time


# Get the current timestamp
starttime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
print("start fuzzing...")

# Check if the directory exists
synth_directory_path = "/home/baseline/Defaultforyosys/synth"
if os.path.exists(synth_directory_path):
    shutil.rmtree(synth_directory_path)
    os.mkdir(synth_directory_path)
else:
    os.mkdir(synth_directory_path)

wrong_directory_path="/home/baseline/Defaultforyosys/Wrong_case"
if os.path.exists(wrong_directory_path):
    shutil.rmtree(wrong_directory_path)
    os.mkdir(wrong_directory_path)
else:
    os.mkdir(wrong_directory_path)

check_directory_path="/home/baseline/Defaultforyosys/check"
if os.path.exists(check_directory_path):
    shutil.rmtree(check_directory_path)
    os.mkdir(check_directory_path)
else:
    os.mkdir(check_directory_path)

files_path="/home/baseline/example"
files = os.listdir(files_path)

for filename in files:
    sfile = os.path.splitext(filename)[0]
    test_folder_path = f"{synth_directory_path}/test_{sfile}"
    os.mkdir(test_folder_path)
    rtl_path = f"{files_path}/{filename}/simulation_yosys/rtl.v"
    result = ["opt", "opt -fast", "opt -full"]
    len_result = len(result)
    for i in range(len_result):        
        new_result = result[i]
        test_case_folder_path = f"{test_folder_path}/test_{sfile}-{i}"
        os.mkdir(test_case_folder_path)
        shutil.copytree(f"{files_path}/{filename}/simulation_yosys", f"{test_case_folder_path}/simulation_yosys")
        shutil.copy("/home/DeLoSo/compare.py", f"{test_case_folder_path}/simulation_yosys")
        os.chdir(f"{test_case_folder_path}/simulation_yosys")
        shutil.copy("yosys_testbench.v", "new_yosys_testbench.v")
        with open('new_yosys_testbench.v', 'r') as file:
            lines = file.readlines()
        lines[6] = '`include "new_syn_yosys.v"\n'
        with open('new_yosys_testbench.v', 'w') as file:
            file.writelines(lines)

        yosys_command = f'yosys -p "read_verilog rtl.v; hierarchy; proc; {new_result} techmap; opt; abc; opt; write_verilog new_syn_yosys.v"> output.txt 2>%1'
        
        try:
            process = subprocess.run(yosys_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            stdout_str = process.stdout.decode('utf-8') 
            with open('output.txt', 'a') as output_file:
                output_file.write(stdout_str)  
            print("Yosys start success")
        except subprocess.CalledProcessError as e:
            print(f"Yosys start fail{e}")

        iverilog_compile_command = 'iverilog -o wave_1 -y new_syn_yosys.v new_yosys_testbench.v'
        try:
            subprocess.run(iverilog_compile_command, shell=True, check=True)
            print("Verilog compile success")
        except subprocess.CalledProcessError as e:
            print(f"Verilog compile success:{e}")

        vvp_command = 'vvp -n wave_1 -lxt2'
        try:
            process = subprocess.run(vvp_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            with open('file1.txt', 'a') as f:
                f.write(process.stdout.decode('utf-8'))
            print("emulate success")
        except subprocess.CalledProcessError as e:
            print(f"emulate fail:{e}")

        sed_command = "sed -i 's/wave_1/wave_2/g' file1.txt"
        try:
            subprocess.run(sed_command, shell=True, check=True)
            print("swap success")
        except subprocess.CalledProcessError as e:
            print(f"swap fail:{e}")

        iverilog_compile_command = 'iverilog -o wave_2 -y syn_yosys.v yosys_testbench.v'
        try:
            subprocess.run(iverilog_compile_command, shell=True, check=True)
            print("Verilog compile success")
        except subprocess.CalledProcessError as e:
            print(f"Verilog compile fail:{e}")

        vvp_command = 'vvp -n wave_2 -lxt2'
        try:
            process = subprocess.run(vvp_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            with open('file2.txt', 'a') as f:
                f.write(process.stdout.decode('utf-8'))
            print("emulate success")
        except subprocess.CalledProcessError as e:
            print(f"emulate fail:{e}")

        with open('output.txt', 'r') as input_file:
            lines = input_file.readlines()
        with open('output.txt', 'w') as output_file:
            for line in lines:
                if "ERROR" in line:
                    os.makedirs(f"{wrong_directory_path}/test_{sfile}-{i}")
                    shutil.copytree(test_case_folder_path, f"{wrong_directory_path}/test_{sfile}-{i}/simulation_yosys")

        with open('output3.txt', 'a') as output_file:
            subprocess.run(["python", "compare.py"], stdout=output_file, stderr=subprocess.PIPE, text=True, check=True)

        if "number different" in open('output3.txt').read():
            os.makedirs(f"{check_directory_path}/test_{sfile}-{i}")
            shutil.copytree(test_case_folder_path, f"{check_directory_path}/test_{sfile}-{i}/simulation_yosys")
        else:
            print("equivalence cheak pass")
            
