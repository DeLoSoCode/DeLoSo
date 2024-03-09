import random

def generate_random_params():
    top = "top"
    flatten_hierarchy = random.choice(["full", "none", "rebuilt"])
    gated_clock_conversion = random.choice(["off", "on", "auto"])
    bufg = random.randint(1, 50)
    directive = random.choice(["RuntimeOptimized", "AreaOptimized_high", "AreaOptimized_medium","AlternateRoutability","AreaMapLargeShiftRegToBRAM", "AreaMultThresholdDSP", "FewerCarryChains", "PerformanceOptimized", "LogicCompaction", "PowerOptimized_high", "PowerOptimized_medium", "Default"])
    fsm_extraction = random.choice(["off", "one_hot", "sequential", "johnson", "gray", "auto"])
    resource_sharing = random.choice(["off", "on", "auto"])
    control_set_opt_threshold = random.randint(1, 50)
    shreg_min_size = random.randint(1, 50)
    max_bram = random.randint(1, 50)
    max_uram = random.randint(1, 50)
    max_dsp = random.randint(1, 50)
    max_bram_cascade_height = random.randint(1, 50)
    max_uram_cascade_height = random.randint(1, 50)
    cascade_dsp = random.choice(["auto", "tree", "force"])
    incremental_mode = random.choice(["aggressive", "default", "off", "quick"])
    other = random.sample(["-retiming ", "-keep_equivalent_registers ", "-no_lc ", "-no_srlextract ", "-assert "],k=random.randint(1,5))

    params = {
        "top": top,
        "flatten_hierarchy": flatten_hierarchy,
        "gated_clock_conversion": gated_clock_conversion,
        "bufg":bufg,
        "directive": directive,       
        "fsm_extraction":fsm_extraction,       
        "resource_sharing":resource_sharing,
        "control_set_opt_threshold":control_set_opt_threshold,       
        "shreg_min_size":shreg_min_size,
        "max_bram":max_bram,
        "max_uram":max_uram,
        "max_dsp":max_dsp,
        "max_bram_cascade_height":max_bram_cascade_height,
        "max_uram_cascade_height":max_uram_cascade_height,
        "cascade_dsp":cascade_dsp,
        "incremental_mode":incremental_mode,
        "other":other,
    }
    return params

def main():
    params = generate_random_params()
    synth_command = f"synth_design -top {params['top']} -flatten_hierarchy {params['flatten_hierarchy']} -gated_clock_conversion {params['gated_clock_conversion']} -bufg {params['bufg']} -directive {params['directive']} -fsm_extraction {params['fsm_extraction']} -resource_sharing {params['resource_sharing']} -control_set_opt_threshold {params['control_set_opt_threshold']} -shreg_min_size {params['shreg_min_size']} -max_bram {params['max_bram']} -max_uram {params['max_uram']} -max_dsp {params['max_dsp']} -max_bram_cascade_height {params['max_bram_cascade_height']} -max_uram_cascade_height {params['max_uram_cascade_height']} -cascade_dsp {params['cascade_dsp']} -incremental_mode {params['incremental_mode']} {''.join(params['other'])} " 
    return synth_command

if __name__ == "__main__":
    main()


