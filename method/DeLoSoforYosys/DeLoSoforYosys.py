import random
from deap import base, creator, tools, algorithms
import subprocess
import os
import spydrnet as sdn
from sklearn.metrics.pairwise import cosine_similarity
import numpy as np
from sklearn.feature_extraction.text import CountVectorizer
import time
import shutil

global rtl_path

def evaluate_individual(individual):
    print("this is evaluate_individual")
    synth_command = construct_synthesis_command(individual)

    feature_value_1 = get_edif_Information(synth_command,rtl_path)
    feature_value_2 = calculate_command_similarity(synth_command)

    return feature_value_1, feature_value_2

def construct_synthesis_command(individual):
    synth_command = ""
    synth_command += " ".join([f"{individual[i]}" for i in range(len(individual))])
    print(synth_command)
    return synth_command

def execute_synthesis(synth_command,rtl_path):    
    try:
        files_path="/home/DeLoSo/DeLoSoforywp/DeLoSo_synth"
        shutil.copy(rtl_path,files_path)

        os.chdir(files_path)
        print(os.getcwd())

        yosys_command = f'yosys -p "read_verilog rtl.v; hierarchy; proc; {synth_command} techmap; opt; abc; opt; write_edif syn_yosys.edif" > output.txt 2>%1'
        print(yosys_command)
        try:
            subprocess.run(yosys_command, shell=True, check=True)
            print("Yosys success!")
        except subprocess.CalledProcessError as e:
            print(f"Yosys fail{e}")        

        syn_vivado_edif_path = os.path.abspath("syn_yosys.edif")

        if os.path.exists("syn_yosys.edif"):
            print("success")
        else:
            print("fail")
            return 0.0
        
        old_edif_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_edif"
        os.chdir(old_edif_path)
        if not os.path.exists("syn_yosys.edif"):
    
            shutil.copy(rtl_path,old_edif_path)
            os.chdir(old_edif_path)
            print(os.getcwd())

            old_yosys_command = 'yosys -p "read_verilog rtl.v; synth; abc; write_edif syn_yosys.edif" > output.txt 2>%1'

            try:
                subprocess.run(old_yosys_command, shell=True, check=True)
                print("Yosys success!")
            except subprocess.CalledProcessError as e:
                print(f"Yosys fail:{e}")  

            
    except Exception as e:
        print(f"Error executing synthesis: {str(e)}")
    return syn_vivado_edif_path

def get_edif_Information(synth_command,rtl_path):
    syn_yosys_edif_path = execute_synthesis(synth_command,rtl_path)
    print(syn_yosys_edif_path)
    if syn_yosys_edif_path == 0.0:
        return 0.0
    else:
        try:
            netlist_1 = sdn.parse(syn_yosys_edif_path)
            old_syn_yosys_edif_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_edif/syn_yosys.edif"
            netlist_2 = sdn.parse(old_syn_yosys_edif_path)

            def get_netlist_info(netlist):
                top_instance = netlist.top_instance
                library_list = list(netlist.get_libraries())
                wire_list = list(netlist.get_wires())
                instance_list = list(netlist.get_instances())
                port_list = list(netlist.get_ports())
                cable_list = list(netlist.get_cables())
                pin_list = list(netlist.get_pins())
                definition_list = list(netlist.get_definitions())
                hpin_list = list(netlist.get_hpins())
                hport_list = list(netlist.get_hports())
                hinstance_list = list(netlist.get_hinstances())
                hwire_list = list(netlist.get_hwires())
                hcable_list = list(netlist.get_hcables())
                S = [len(top_instance.reference.ports),len(top_instance.reference.cables),len(top_instance.reference.references),len(top_instance.reference.children),len(hcable_list),len(hwire_list),len(hinstance_list),len(hport_list),len(hpin_list),len(definition_list),len(pin_list),len(cable_list),len(port_list),len(instance_list),len(wire_list),len(library_list)]
                return S

            A = get_netlist_info(netlist_1)
            B = get_netlist_info(netlist_2)

            def get_cosine_similarity(A,B):
                A = [A]
                B = [B]
                return cosine_similarity(A,B)

            dist = get_cosine_similarity(A,B)
            dist = float(dist)
            synth_directory_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_synth"
            file_list = os.listdir(synth_directory_path)
            for file_name in file_list:
                file_path = os.path.join(synth_directory_path, file_name)
                try:
                    if os.path.isfile(file_path):
                        os.remove(file_path)  
                except Exception as e:
                    print(f" {file_path} {e}")        
            dist = 1-dist
            print(dist)
        except Exception as e:
            return 0.0
        return dist
    
def calculate_command_similarity(command_2):
    command_1 = "opt_expr; opt_dff; opt_clean; opt_merge; opt_reduce; opt_mem; fsm; memory; opt; opt_share; opt_lut; opt_clean; opt_share; opt_expr"
    params_1 = extract_params(command_1)
    params_2 = extract_params(command_2)

    common_params = set(params_1.keys()) & set(params_2.keys())
    similarity_scores = []

    for param in common_params:
        if params_1[param] == params_2[param]:
            similarity_scores.append(1)  
        else:
            similarity_scores.append(0)  

    if similarity_scores:
        similarity = sum(similarity_scores) / len(similarity_scores)
    else:
        similarity = 0  
    similarity = 1-similarity
    print(similarity)
    return similarity

def extract_params(command):
    param_list = command.split()
    params = {}
    
    for i in range(len(param_list) - 1):
        param_name = param_list[i].strip()
        params[param_name] = param_list[i + 1]
    
    return params


def optimizeGA(n_pop=50, n_gen=30, cxpb=0.5, mutpb=0.2, lambda_=10, mu=2,num_solutions=10):
    creator.create("FitnessMulti", base.Fitness, weights=(0.8, 0.2))
    creator.create('Individual', list, fitness=creator.FitnessMulti)
    toolbox = base.Toolbox()
    toolbox.register('attr_opt_expr', random.choice, ["opt_expr; ", "opt_expr -mux_undef; ", "opt_expr -mux_bool; ", "opt_expr -undriven; ", "opt_expr -noclkinv; ", "opt_expr -fine; ", "opt_expr -full; ", "opt_expr -keepdc; "])
    toolbox.register('attr_opt_dff', random.choice, ["opt_dff; ", "opt_dff -nodffe; ", "opt_dff -nosdff; ", "opt_dff -keepdc; ", "opt_dff -sat; "])
    toolbox.register('attr_opt_clean', random.choice, ["opt_clean; ", "opt_clean -purge; "])
    toolbox.register('attr_opt_merge', random.choice, ["opt_merge; ", "opt_merge -share_all; "])
    toolbox.register('attr_opt_reduce', random.choice, ["opt_reduce; ", "opt_reduce -fine; ", "opt_reduce -full; "])
    toolbox.register('attr_opt_mem', random.choice, ["opt_mem; ", "opt_mem_feedback; ", "opt_mem_priority; ", "opt_mem_widen; "])
    toolbox.register('attr_opt', random.choice, ["opt; ", "opt -fast; ", "opt -full; ", "opt -fast -full; "])
    toolbox.register('attr_opt_share', random.choice, ["opt_share; ", "opt_share; "])
    toolbox.register('attr_opt_lut', random.choice, ["opt_lut; "])
  
    toolbox.register('individual', tools.initCycle, creator.Individual, (
        toolbox.attr_opt_expr, 
        toolbox.attr_opt_dff, 
        toolbox.attr_opt_clean, 
        toolbox.attr_opt_merge, 
        toolbox.attr_opt_reduce, 
        toolbox.attr_opt_mem, 
        toolbox.attr_opt, 
        toolbox.attr_opt_share, 
        toolbox.attr_opt_lut,
        toolbox.attr_opt_clean, 
        toolbox.attr_opt_share,
        toolbox.attr_opt_expr), n=1)
    
    toolbox.register('population', tools.initRepeat, list, toolbox.individual)
    toolbox.register('evaluate', evaluate_individual) 
    toolbox.register('mate', tools.cxTwoPoint)
    toolbox.register('mutate', tools.mutShuffleIndexes, indpb=0.5)
    toolbox.register('select', tools.selTournament, tournsize=3)

    best_inds = []  
    for _ in range(num_solutions):
        np.random.seed(0)
        pop = toolbox.population(n=n_pop)
        hof = tools.HallOfFame(1)
        stats = tools.Statistics(lambda ind: ind.fitness.values)
        stats.register("avg", np.mean, axis=0)
        stats.register("std", np.std, axis=0)
        stats.register("min", np.min, axis=0)
        stats.register("max", np.max, axis=0)

        algorithms.eaSimple(pop, toolbox, cxpb=cxpb, mutpb=mutpb, ngen=n_gen, mu=6, stats=stats, halloffame=hof, verbose=True)

        best_ind = hof[0]
        best_inds.append(best_ind)  
    return best_inds

def main(new_rtl_path):  
    synth_directory_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_synth"
    file_list = os.listdir(synth_directory_path)
    for file_name in file_list:
        file_path = os.path.join(synth_directory_path, file_name)
        try:
            if os.path.isfile(file_path):
                os.remove(file_path)  
        except Exception as e:
            print(f" {file_path} {e}")

    edif_directory_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_edif"
    edif_file_list = os.listdir(edif_directory_path)
    for file_name in edif_file_list:
        file_path = os.path.join(edif_directory_path, file_name)
        try:
            if os.path.isfile(file_path):
                os.remove(file_path) 
        except Exception as e:
            print(f" {file_path} {e}")

    global rtl_path
    rtl_path = new_rtl_path
    best_inds = optimizeGA()
    for i in range(len(best_inds)):
        best_inds[i] = construct_synthesis_command(best_inds[i])
    
    edif_directory_path = "/home/DeLoSo/DeLoSoforywp/DeLoSo_edif"
    edif_file_list = os.listdir(edif_directory_path)
    for file_name in edif_file_list:
        file_path = os.path.join(edif_directory_path, file_name)
        try:
            if os.path.isfile(file_path):
                os.remove(file_path)  
        except Exception as e:
            print(f"{file_path} {e}")
    return best_inds

if __name__ == "__main__":
    main()

