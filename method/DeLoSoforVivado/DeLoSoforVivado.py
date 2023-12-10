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

param_values = {
    '-flatten_hierarchy': ["full", "none", "rebuilt"],
    '-gated_clock_conversion': ["off", "on", "auto"],
    '-bufg': list(range(1, 20)),
    '-directive': ["RuntimeOptimized", "AreaOptimized_high", "AreaOptimized_medium", "AlternateRoutability", "AreaMapLargeShiftRegToBRAM", "AreaMultThresholdDSP", "FewerCarryChains", "PerformanceOptimized", "LogicCompaction", "PowerOptimized_high", "PowerOptimized_medium", "Default"],
    '-fsm_extraction': ["off", "one_hot", "sequential", "johnson", "gray", "auto"],
    '-resource_sharing': ["off", "on", "auto"],
    '-control_set_opt_threshold': list(range(1, 20)),
    '-shreg_min_size': list(range(1, 20)),
    '-max_bram': list(range(1, 20)),
    '-max_uram': list(range(1, 20)),
    '-max_dsp': list(range(1, 20)),
    '-max_bram_cascade_height': list(range(1, 20)),
    '-max_uram_cascade_height': list(range(1, 20)),
    '-cascade_dsp': ["auto", "tree", "force"],
    '-incremental_mode': ["aggressive", "default", "off", "quick"]
}

global rtl_path


def evaluate_individual(individual):
    synth_command = construct_synthesis_command(individual)

    feature_value_1 = get_edif_Information(synth_command,rtl_path)
    feature_value_2 = calculate_command_similarity(synth_command)

    return feature_value_1, feature_value_2

def construct_synthesis_command(individual):
    synth_command = "synth_design -top top "
    synth_command += " ".join([f"{individual[i]}" for i in range(len(individual))])

    return synth_command

def get_possible_values(param_name):
    if param_name == "-flatten_hierarchy":
        return ["full", "none", "rebuilt"]
    elif param_name == "-gated_clock_conversion":
        return ["off", "on", "auto"]
    elif param_name == "-bufg":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-directive":
        return ["RuntimeOptimized", "AreaOptimized_high", "AreaOptimized_medium", "AlternateRoutability", "AreaMapLargeShiftRegToBRAM", "AreaMultThresholdDSP", "FewerCarryChains", "PerformanceOptimized", "LogicCompaction", "PowerOptimized_high", "PowerOptimized_medium", "Default"]
    elif param_name == "-fsm_extraction":
        return ["off", "one_hot", "sequential", "johnson", "gray", "auto"]
    elif param_name == "-resource_sharing":
        return ["off", "on", "auto"]
    elif param_name == "-control_set_opt_threshold":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-shreg_min_size":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-max_bram":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-max_uram":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-max_dsp":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-max_bram_cascade_height":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-max_uram_cascade_height":
        return [f"{value}" for value in range(1, 20)]
    elif param_name == "-cascade_dsp":
        return ["auto", "tree", "force"]
    elif param_name == "-incremental_mode":
        return ["aggressive", "default", "off", "quick"]
    else:
        return []

def execute_synthesis(synth_command,rtl_path):    
    try:
        print(os.getcwd())
        files_path="/home/DeLoSo/DeLoSoforvwp/DeLoSo_synth"
        shutil.copy(rtl_path,files_path)

        os.chdir(files_path)
        print(os.getcwd())

        with open("t_vivado.tcl", "w") as f:
            f.write("\nread_verilog rtl.v")
            f.write("\n" + synth_command)
            f.write("\nwrite_verilog -force syn_vivado.v")
            f.write("\nwrite_edif syn_vivado.edif")
            f.write("\nexit")
        syn_vivado_edif_path = os.path.abspath("syn_vivado.edif")

        process = subprocess.Popen("vivado -mode batch -source t_vivado.tcl", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()

        if os.path.exists("syn_vivado.edif"):
            print("Synthesis completed successfully.") 
        else:
            return 1.0
        
        old_edif_path = "/home/DeLoSo/DeLoSoforvwp/DeLoSo_edif"
        os.chdir(old_edif_path)
        if not os.path.exists("syn_vivado.edif"):
    
            shutil.copy(rtl_path,old_edif_path)

            os.chdir(old_edif_path)
            print(os.getcwd())

            with open("t_vivado.tcl", "w") as f:
                f.write("\nread_verilog rtl.v")
                f.write("\nsynth_design -top top")
                f.write("\nwrite_edif syn_vivado.edif -force")
                f.write("\nexit")
         
            process = subprocess.Popen("vivado -mode batch -source t_vivado.tcl", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            process.wait()
            
    except Exception as e:
        print(f"Error executing synthesis: {str(e)}")
    return syn_vivado_edif_path

def get_edif_Information(synth_command,rtl_path):
    syn_vivado_edif_path = execute_synthesis(synth_command,rtl_path)
    print(syn_vivado_edif_path)
    if syn_vivado_edif_path == 1.0:
        return 1.0
    else:
        netlist_1 = sdn.parse(syn_vivado_edif_path)
        old_syn_vivado_edif_path = "/home/DeLoSo/DeLoSoforvwp/DeLoSo_edif/syn_vivado.edif"
        netlist_2 = sdn.parse(old_syn_vivado_edif_path)

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
        synth_directory_path = "/home/DeLoSo/DeLoSoforvwp/DeLoSo_synth"
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
        return dist
    
def calculate_command_similarity(command_2):
    command_1 = "synth_design -top top -flatten_hierarchy rebuit -gated_clock_conversion off -bufg 12 -directive Default -fsm_extraction auto -resource_sharing auto -control_set_opt_threshold auto -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -incremental_mode default"
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
    params = {}
    param_list = command.split(' ')
    for i in range(1, len(param_list), 2):  
        param_name = param_list[i].strip('-')
        param_value = param_list[i + 1]
        params[param_name] = param_value

    return params


def repair_ind1(ind1):
    ind1 = list(ind1)
    ind1_name = []
    for i in range(len(ind1)):
        ind1_name.append(ind1[i].split(' ')[0])
    print(ind1_name)

    ind1_params1 = set(ind1_name) & set(compare_list)
    ind1_params2 = set(compare_list) - set(ind1_params1)
    ind1_params2 = list(ind1_params2)
    for i in range(len(ind1_params2)):
        ind1_params2[i] = ind1_params2[i] + ' ' + str(random.choice(param_values[ind1_params2[i]]))    

    length = len(ind1_name)

    for i in range(length):
        for j in range(i+1,length):
            if ind1_name[i] == ind1_name[j]:
                ind1[j] = ind1_params2.pop()

    return ind1

def repair_ind2(ind2):
    ind2 = list(ind2)
    ind2_name = []
    for i in range(len(ind2)):
        ind2_name.append(ind2[i].split(' ')[0])
    print(ind2_name)

    ind2_params1 = set(ind2_name) & set(compare_list)
    ind2_params2 = set(compare_list) - set(ind2_params1)
    ind2_params2 = list(ind2_params2)
    for i in range(len(ind2_params2)):
        ind2_params2[i] = ind2_params2[i] + ' ' + str(random.choice(param_values[ind2_params2[i]]))    

    length = len(ind2_name)
    for i in range(length):
        for j in range(i+1,length):
            if ind2_name[i] == ind2_name[j]:
                ind2[j] = ind2_params2.pop()
    
    return ind2

def mate(ind1, ind2):
    print("this is mate")
    ind1, ind2 = tools.cxUniform(ind1, ind2, indpb=0.5)
    ind1 = repair_ind1(ind1)
    ind2 = repair_ind2(ind2)

    ind1 = creator.Individual(ind1)
    ind2 = creator.Individual(ind2)

    return ind1, ind2
    
def mutate(individual):
    print("this is mutate")
    print(individual)
    if random.random() < 0.5:
        idx1, idx2 = random.sample(range(len(individual)), 2)
        individual[idx1], individual[idx2] = individual[idx2], individual[idx1]
        print("after-mutate-bc mutate")
        print(individual)
    else:
        idx = random.randint(0, len(individual) - 1)
        param_name = individual[idx][0]  
        param_values = get_possible_values(param_name)  
        if param_values:
            new_param_value = random.choice(param_values)
            individual[idx] = (param_name, new_param_value)
        print("after-mutate-bt mutate")
        print(individual)
    return individual,

compare_list = [ '-flatten_hierarchy',
        '-gated_clock_conversion',
        '-bufg',
        '-directive',
        '-fsm_extraction',
        '-resource_sharing',
        '-control_set_opt_threshold',
        '-shreg_min_size',
        '-max_bram',
        '-max_uram',
        '-max_dsp',
        '-max_bram_cascade_height',
        '-max_uram_cascade_height',
        '-cascade_dsp',
        '-incremental_mode']

def optimizeGA(n_pop=50, n_gen=50, cxpb=0.5, mutpb=0.2, lambda_=10, mu=2,num_solutions=10):

    creator.create("FitnessMulti", base.Fitness, weights=(0.5, 0.5))
    creator.create('Individual', list, fitness=creator.FitnessMulti)

    toolbox = base.Toolbox()
    toolbox.register('attr_flatten_hierarchy', random.choice, ["-flatten_hierarchy full", "-flatten_hierarchy none", "-flatten_hierarchy rebuilt"])
    toolbox.register('attr_gated_clock_conversion', random.choice, ["-gated_clock_conversion off", "-gated_clock_conversion on", "-gated_clock_conversion auto"])
    toolbox.register('attr_bufg', random.choice, [f"-bufg {value}" for value in range(1, 20)])
    toolbox.register('attr_directive', random.choice, ["-directive RuntimeOptimized", "-directive AreaOptimized_high", "-directive AreaOptimized_medium", "-directive AlternateRoutability", "-directive AreaMapLargeShiftRegToBRAM", "-directive AreaMultThresholdDSP", "-directive FewerCarryChains", "-directive PerformanceOptimized", "-directive LogicCompaction", "-directive PowerOptimized_high", "-directive PowerOptimized_medium", "-directive Default"])
    toolbox.register('attr_fsm_extraction', random.choice, ["-fsm_extraction off", "-fsm_extraction one_hot", "-fsm_extraction sequential", "-fsm_extraction johnson", "-fsm_extraction gray", "-fsm_extraction auto"])
    toolbox.register('attr_resource_sharing', random.choice, ["-resource_sharing off", "-resource_sharing on", "-resource_sharing auto"])
    toolbox.register('attr_control_set_opt_threshold', random.choice, [f"-control_set_opt_threshold {value}" for value in range(1, 20)])
    toolbox.register('attr_shreg_min_size', random.choice, [f"-shreg_min_size {value}" for value in range(1, 20)])
    toolbox.register('attr_max_bram', random.choice, [f"-max_bram {value}" for value in range(1, 20)])
    toolbox.register('attr_max_uram', random.choice, [f"-max_uram {value}" for value in range(1, 20)])
    toolbox.register('attr_max_dsp', random.choice, [f"-max_dsp {value}" for value in range(1, 20)])
    toolbox.register('attr_max_bram_cascade_height', random.choice, [f"-max_bram_cascade_height {value}" for value in range(1, 20)])
    toolbox.register('attr_max_uram_cascade_height', random.choice, [f"-max_uram_cascade_height {value}" for value in range(1, 20)])
    toolbox.register('attr_cascade_dsp', random.choice, ["-cascade_dsp auto", "-cascade_dsp tree", "-cascade_dsp force"])
    toolbox.register('attr_incremental_mode', random.choice, ["-incremental_mode aggressive", "-incremental_mode default", "-incremental_mode off", "-incremental_mode quick"])

    toolbox.register('individual', tools.initCycle, creator.Individual, (
        toolbox.attr_flatten_hierarchy,
        toolbox.attr_gated_clock_conversion,
        toolbox.attr_bufg,
        toolbox.attr_directive,
        toolbox.attr_fsm_extraction,
        toolbox.attr_resource_sharing,
        toolbox.attr_control_set_opt_threshold,
        toolbox.attr_shreg_min_size,
        toolbox.attr_max_bram,
        toolbox.attr_max_uram,
        toolbox.attr_max_dsp,
        toolbox.attr_max_bram_cascade_height,
        toolbox.attr_max_uram_cascade_height,
        toolbox.attr_cascade_dsp,
        toolbox.attr_incremental_mode), n=1)
    
    toolbox.register('population', tools.initRepeat, list, toolbox.individual)
    toolbox.register('evaluate', evaluate_individual) 
    toolbox.register('mate', mate)
    toolbox.register('mutate', mutate)
    toolbox.register('select', tools.selTournament, tournsize=3)

    np.random.seed(0)
    pop = toolbox.population(n=n_pop)
    hof = tools.HallOfFame(1)
    stats = tools.Statistics(lambda ind: ind.fitness.values)
    stats.register("avg", np.mean, axis=0)
    stats.register("std", np.std, axis=0)
    stats.register("min", np.min, axis=0)
    stats.register("max", np.max, axis=0)

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
        algorithms.eaMuPlusLambda(pop, toolbox, mu=mu, lambda_=lambda_, cxpb=cxpb, mutpb=mutpb, ngen=n_gen, stats=stats, halloffame=hof, verbose=True)
        best_ind = hof[0]
        best_inds.append(best_ind)  
    return best_inds

def main(new_rtl_path):
    synth_directory_path = "/home/DeLoSo/DeLoSoforvwp/GA_synth"
    file_list = os.listdir(synth_directory_path)
    for file_name in file_list:
        file_path = os.path.join(synth_directory_path, file_name)
        try:
            if os.path.isfile(file_path):
                os.remove(file_path)  #
        except Exception as e:
            print(f" {file_path} {e}")

    edif_directory_path = "/home/DeLoSo/DeLoSoforvwp/GA_edif"
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
    print(best_inds)
    for i in range(len(best_inds)):
        best_inds[i] = construct_synthesis_command(best_inds[i])

    edif_directory_path = "/home/DeLoSo/DeLoSoforvwp/GA_edif"
    edif_file_list = os.listdir(edif_directory_path)
    for file_name in edif_file_list:
        file_path = os.path.join(edif_directory_path, file_name)
        try:
            if os.path.isfile(file_path):
                os.remove(file_path)  
        except Exception as e:
            print(f"{file_path}{e}")
    return best_inds

if __name__ == "__main__":
    main()
