        yosys -p "
            read_verilog rtl.v         
            synth
            write_verilog syn_yosys.v"
        iverilog -o wave_1 -y syn_yosys.v yosys_testbench.v
        vvp -n wave_1 -lxt2 >> file1.txt
        sed -i 's/wave_1/wave_2/g' file1.txt;
        mv syn_yosys.v old_syn_yosys.v
        
        yosys -p "
            read_verilog rtl.v         
	    hierarchy; proc; opt_merge; opt_lut; opt_expr; opt_lut; opt_lut; opt_dff; opt_expr; opt_clean; opt_lut; opt_demorgan; opt_reduce; opt_merge; opt_lut_ins; opt_merge; opt_demorgan; opt_reduce; opt_lut_ins; opt_muxtree; opt_expr; opt_share; opt_reduce; opt_demorgan; opt_lut; opt_merge; opt_reduce; opt_expr; opt_lut; opt_lut; opt_expr; opt_merge; opt_merge; opt_demorgan; opt_lut_ins; opt_expr; opt_clean; opt_share; opt_expr; opt_merge; opt_reduce; opt_expr; opt_reduce; opt_merge; opt_clean; opt_reduce; fsm; opt_share; opt_expr; opt_lut; opt_clean; opt_expr; opt_expr; opt_merge; opt_clean; opt_merge; opt_merge; opt_reduce; opt_merge; opt_lut; opt_lut; opt_expr; opt_expr; opt_demorgan; opt_reduce; opt_demorgan; opt_expr; opt_merge; opt_reduce; opt_reduce; opt_share; opt_demorgan; opt_lut; opt_lut_ins; opt_lut; opt_expr; opt_lut; opt_clean; opt_merge; opt_merge; opt_demorgan; opt_muxtree; opt_reduce; opt_lut_ins; opt_dff; opt_reduce; opt_merge; opt_lut; opt_reduce; opt_expr; opt_lut_ins; memory; opt_lut_ins; opt_reduce; opt_expr; opt_reduce; opt_expr; opt_merge; opt_lut; opt_dff; opt_lut; opt_lut; opt_reduce; opt_muxtree; opt_share; opt_expr; opt_lut; opt_reduce; opt_merge; opt_clean; opt_merge; opt_merge; opt_merge; opt_reduce; opt_lut_ins; opt_reduce; opt_lut; opt_demorgan; opt_expr; opt_merge; opt_clean; opt_expr; opt_lut; opt_expr; opt_lut_ins; opt_merge; opt_clean; opt_demorgan; opt_reduce; opt_merge; opt_demorgan; opt_lut; opt_share; opt_expr; opt_demorgan; opt_expr; techmap; opt_expr; opt_merge; opt_demorgan; opt_expr; opt_demorgan; opt_muxtree; opt_lut; opt_lut; opt_share; opt_reduce; opt_reduce; opt_reduce; opt_merge; opt_lut; opt_merge; opt_dff; opt_reduce; opt_demorgan; opt_reduce; opt_clean; opt_share; opt_expr; opt_merge; opt_lut; opt_clean; opt_merge; opt_expr; opt_clean; opt_reduce; opt_lut_ins; opt_lut; opt_expr; opt_demorgan; opt_expr; opt_merge; opt_lut; opt_lut; opt_expr; opt_lut_ins; opt_lut_ins; opt_expr; opt_merge; opt_merge; opt_reduce; abc; opt_merge; opt_reduce; opt_merge; opt_demorgan; opt_demorgan; opt_expr; opt_lut_ins; opt_expr; opt_reduce; opt_lut; opt_clean; opt_lut; opt_demorgan; opt_reduce; opt_merge; opt_merge; opt_expr; opt_lut; opt_merge; opt_dff; opt_lut; opt_lut; opt_demorgan; opt_muxtree; opt_lut_ins; opt_expr; opt_lut; opt_merge; opt_clean; opt_reduce; opt_clean; opt_merge; opt_expr; opt_lut_ins; opt_merge; opt_reduce; opt_reduce; opt_reduce; opt_share; opt_lut; opt_expr; opt_share; opt_expr; opt_expr;
            write_verilog syn_yosys.v"
        iverilog -o wave_2 -y syn_yosys.v yosys_testbench.v
        vvp -n wave_2 -lxt2 >> file2.txt
        
        python3 compare.py >> output.txt

