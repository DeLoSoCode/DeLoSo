import random

def generate_random_params():
    top = "top"
    flatten_hierarchy = "rebuilt"
    gated_clock_conversion = "auto"
    bufg = 1
    directive = "RuntimeOptimized"
    fsm_extraction = "auto"
    resource_sharing = "auto"
    control_set_opt_threshold = 1
    shreg_min_size = 1
    max_bram = 1
    max_uram = 1
    max_dsp = 1
    max_bram_cascade_height = 1
    max_uram_cascade_height = 1
    cascade_dsp = "auto"
    incremental_mode = "default"
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
    synth_command = synth_command.split(" ")
    random.shuffle(synth_command)
    synth_command = " ".join(synth_command)
    return synth_command

if __name__ == "__main__":
    main()


