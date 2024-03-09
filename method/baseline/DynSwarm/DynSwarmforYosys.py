import random

def main():
    def pre_stage():
        pre_options = [pre_auto, pre_flatten, pre_ifx, pre_memx, pre_nomem, pre_rdff, pre_nokeepdc]
        selected_pre_stage = random.choice(pre_options)
        return selected_pre_stage()

    def pre_auto():
        return "prep -auto-top; "
    def pre_flatten():
        return "prep -flatten; "
    def pre_ifx():
        return "prep -ifx; "
    def pre_memx():
        return "prep -memx; "
    def pre_nomem():
        return "prep -nomem; "
    def pre_rdff():
        return "prep -rdff; " 
    def pre_nokeepdc():
        return "prep -nokeepdc; "
    
    def opt_stage():
        opt_options = [opt_fast, opt_full, opt_mux_undef, opt_undriven, opt_fine, opt_keepdc, opt_mux_bool]
        selected_opt_stage = random.choice(opt_options)
        return selected_opt_stage()

    def opt_fast():
        return "opt -fast; "
    def opt_full():
        return "opt -full; "
    def opt_mux_undef():
        return "opt -mux_undef; "
    def opt_undriven():
        return "opt -undriven; "
    def opt_fine():
        return "opt -fine; "
    def opt_keepdc():
        return "opt -keepdc; " 
    def opt_mux_bool():
        return "opt -mux_bool; "

    def hi_stage():
        return "hierarchy; flatten; "
    
    def qwp_stage():
        qwp_options = [qwp_ltr, qwp_alpha, qwp_v, qwp_grid]
        selected_qwp_stage = random.choice(qwp_options)
        return selected_qwp_stage()

    def qwp_ltr():
        return "qwp -ltr; "
    def qwp_alpha():
        return "qwp -alpha; "
    def qwp_v():
        return "qwp -v; "
    def qwp_grid():
        return "qwp -grid N; "    

    def proc_stage():
        proc_options = [proc_nomux, proc_norom, proc_ifx, proc_noopt]
        selected_proc_stage = random.choice(proc_options)
        return selected_proc_stage()

    def proc_nomux():
        return "proc -nomux; "
    def proc_norom():
        return "proc -norom; "
    def proc_ifx():
        return "proc -ifx; "
    def proc_noopt():
        return "proc -noopt; "

    def fsm_stage():
        fsm_options = [fsm_expand, fsm_norecode, fsm_export, fsm_nomap, fsm_fullexpand]
        selected_fsm_stage = random.choice(fsm_options)
        return selected_fsm_stage()

    def fsm_expand():
        return "fsm -expand; "
    def fsm_norecode():
        return "fsm -norecode; "
    def fsm_export():
        return "fsm -export; "
    def fsm_nomap():
        return "fsm -nomap; "
    def fsm_fullexpand():
        return "fsm -fullexpand; "

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

    def opt_expr_mux_undef():
        return "opt_expr -mux_undef; "

    def opt_expr_mux_bool():
        return "opt_expr -mux_bool; "

    def opt_expr_undriven():
        return "opt_expr -undriven; "

    def opt_expr_noclkinv():
        return "opt_expr -noclkinv; "

    def opt_expr_fine():
        return "opt_expr -fine; "

    def opt_expr_full():
        return "opt_expr -full; "

    def opt_expr_keepdc():
        return "opt_expr -keepdc; "

    def opt_clean_purge():
        return "opt_clean -purge; "

    def opt_merge_share_all():
        return "opt_merge -share_all; "

    def opt_reduce_fine():
        return "opt_reduce -fine; "


    def opt_reduce_full():
        return "opt_reduce -full; "

    def opt_dff_nodffe():
        return "opt_dff -nodffe; "

    def opt_dff_nosdff():
        return "opt_dff -nosdff; "

    def opt_dff_keepdc():
        return "opt_dff -keepdc; "

    
    def opt_dff_sat():
        return "opt_dff -sat; "


    def wreduce():
        return "wreduce; "
   

    def check():
        return "check; "
     

    def fsm_detect():
        return "fsm_detect; "
        

    def fsm_opt():
        return "fsm_opt; "
    

    def fsm_recode():
        return "fsm_recode; "
       
    def fsm_info():
        return "fsm_info; "
    
    def fsm_map():
        return "fsm_map; "
     

    def fsm_extract():
        return "fsm_extract; "
       

    def fsm_expand():
        return "fsm_expand; "
      

    def fsm_export():
        return "fsm_export; "
     

    def memory_share():
        return "memory_share; "

    def memory_collect():
        return "memory_collect; "
   

    def memory_bmux2rom():
        return "memory_bmux2rom; "
   
    
    def memory_bram():
        return "memory_bram; "
    

    def memory_dff():
        return "memory_dff; "
  
    
    def memory_libmap():
        return "memory_libmap; "
     

    def memory_map():
        return "memory_map; "
   
    
    def memory_memx():
        return "memory_memx; "
      

    def memory_narrow():
        return "memory_narrow; "


    def memory_nordff():
        return "memory_nordff; "

    
    def memory_unpack():
        return "memory_unpack; "

    stages = [proc_stage, techmap_stage, abc_stage]

    original_optimizations = [
        (opt_expr, random.randint(1, 2)), 
        (opt_clean, random.randint(1, 2)),  
        (opt_demorgan, random.randint(0, 1)), 
        (opt_dff, random.randint(0, 1)),  
        (opt_lut, random.randint(0, 2)), 
        (opt_lut_ins, random.randint(0, 2)), 
        (opt_merge, random.randint(0, 2)),  
        (opt_muxtree, random.randint(0, 2)),  
        (opt_reduce, random.randint(1, 2)),  
        (opt_ffinv, random.randint(0, 2)), 
        (opt_mem, random.randint(0, 2)), 
        (opt_mem_feedback, random.randint(0, 2)),  
        (opt_mem_priority, random.randint(0, 1)),  
        (opt_mem_widen, random.randint(0, 1)),  
        (opt_share, random.randint(1, 2)),  
        
        (opt_expr_fine, random.randint(1, 2)),  
        (opt_clean_purge, random.randint(1, 2)),  
        (opt_expr_full, random.randint(1, 2)),  
        (opt_expr_keepdc, random.randint(1, 2)),  
        (opt_expr_mux_bool, random.randint(1, 2)),  
        (opt_expr_mux_undef, random.randint(1, 2)),  
        (opt_expr_noclkinv, random.randint(1, 2)),  
        (opt_expr_undriven, random.randint(1, 2)),  
        (opt_merge_share_all, random.randint(1, 2)),  
        (opt_reduce_fine, random.randint(1, 2)), 
        (opt_reduce_full, random.randint(1, 2)), 
        (opt_dff_keepdc, random.randint(1, 2)), 
        (opt_dff_nodffe, random.randint(1, 2)),  
        (opt_dff_nosdff, random.randint(1, 2)), 
        (opt_dff_sat, random.randint(1, 2)), 

        (wreduce, random.randint(1, 2)), 
        (check, random.randint(1, 2)),  
 
        (fsm_detect, random.randint(0, 2)),  
        (fsm_expand, random.randint(0, 2)),  
        (fsm_export, random.randint(0, 2)),  
        (fsm_extract, random.randint(0, 2)),  
        (fsm_info, random.randint(0, 2)),  
        (fsm_map, random.randint(0, 1)),  
        (fsm_opt, random.randint(0, 1)), 
        (fsm_recode, random.randint(0, 2)),  
        (memory_bmux2rom, random.randint(0, 2)),  
        (memory_bram, random.randint(1, 2)),  
        (memory_collect, random.randint(0, 2)),  
        (memory_libmap, random.randint(0, 2)),  
        (memory_map, random.randint(0, 1)),  
        (memory_memx, random.randint(0, 1)),  
        (memory_narrow, random.randint(0, 1)),  
        (memory_nordff, random.randint(0, 1)),  
        (memory_share, random.randint(0, 1)), 
        (memory_dff, random.randint(0, 2)),  
        (memory_unpack, random.randint(0, 2))  


        ]

    optimizations = []
    for opt, num_executions in original_optimizations:
        optimizations.extend([opt] * num_executions)

    output = ""
    output += pre_stage()
    output += hi_stage()
    
    for stage in stages:
        output += stage()  

        random.shuffle(optimizations)  

        for optimization in optimizations:
            output += optimization()  

    output += opt_stage()
    output += qwp_stage()
    return output

if __name__ == "__main__":
    main()