import random

def main():
    def proc_stage():
        return "proc; "

    def fsm_stage():
        return "fsm; "

    def memory_stage():
        return "memory; "

    def techmap_stage():
        return "techmap; "

    def abc_stage():
        return "abc; "

    def opt_expr():
        return "opt_expr; "

    def opt_clean():
        return "opt_clean; "

    def opt_demorgan():
        return "opt_demorgan; "

    def opt_dff():
        return "opt_dff; "

    def opt_lut():
        return "opt_lut; "

    def opt_lut_ins():
        return "opt_lut_ins; "

    def opt_merge():
        return "opt_merge; "

    def opt_muxtree():
        return "opt_muxtree; "

    def opt_reduce():
        return "opt_reduce; "

    def opt_share():
        return "opt_share; "

    def opt_ffinv():
        return "opt_ffinv; "

    def opt_mem():
        return "opt_mem; "

    def opt_mem_feedback():
        return "opt_mem_feedback; "

    def opt_mem_priority():
        return "opt_mem_priority; "
    
    def opt_mem_widen():
        return "opt_mem_widen; "

    stages = [proc_stage, fsm_stage, memory_stage, techmap_stage,abc_stage]

    original_optimizations = [
        (opt_expr, random.randint(1, 20)),  
        (opt_clean, random.randint(1, 20)),  
        (opt_demorgan, random.randint(1, 20)),  
        (opt_dff, random.randint(1, 20)), 
        (opt_lut, random.randint(1, 20)),  
        (opt_lut_ins, random.randint(1, 20)), 
        (opt_merge, random.randint(1, 20)), 
        (opt_muxtree, random.randint(1, 20)), 
        (opt_reduce, random.randint(1, 20)),  
        (opt_ffinv, random.randint(1, 20)),  
        (opt_mem, random.randint(1, 20)), 
        (opt_mem_feedback, random.randint(1, 20)), 
        (opt_mem_priority, random.randint(1, 20)),  
        (opt_mem_widen, random.randint(1, 20)),  
        (opt_share, random.randint(1, 20))  
        ]

    optimizations = []
    for opt, num_executions in original_optimizations:
        optimizations.extend([opt] * num_executions)

    output = ""

    for stage in stages:
        output += stage()  

        random.shuffle(optimizations) 

        for optimization in optimizations:
            output += optimization()  

    return output


if __name__ == "__main__":
    main()