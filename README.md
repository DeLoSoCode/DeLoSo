# DeLoSo
We propose DeLoSo, the first method for DEtecting LOgic Synthesis Optimization bugs. DeLoSo relies on netlist differences and parameter variations to guide the generation of diverse logic synthesis optimization configuration (LSOC) combinations to thoroughly test the optimization process. 

We systematically investigated 18 core logic synthesis optimization configuration parameters, including cascade_dsp and directive , in the commercial logic synthesis tool Vivado (latest version 2023.1). Additionally, we explored 21 core logic synthesis optimization configuration parameters, such as opt_lut and opt_expr, in the open-source synthesis tool Yosys (latest version 0.30+48).

We have reported a total of 18 optimization bugs in Vivado and Yosys. These bugs comprise 13 functional bugs resulting from inconsistent outputs, 3 crash bugs, and 2 performance bug caused by memory overflow.

vivado	7AD9ZWSA1	 Incorrect Functionality of unsigned() System Function Due to  Synthesis Parameters.

vivado	7EruaNSAR  An error occurred in the evaluation, resulting in incorrect simulation results.

vivado	7Dv91gSAB	 Inconsistency Issue Arising from Interactions of Parameters like max_bram and max_uram.

vivado	7D1KRBSA3	 Bitwise XOR Operation Error Occurs During Synthesis of Design File Due to Custom Parameters.

vivado	7PhRiCSAV	 Signal and expression splicing errors occur during synthesis.

vivado	7UmkalSAB	 Shift Operation Error Occurs in the Synthesis Process.

vivado	7UmkM2SAJ	 The synthesis parameter shreg_min_size causes errors in the simulation results.

vivado	7ZIdZvSAL	 The parameter "flatten_hierarchy" during logic synthesis leads to incorrect simulation results.

vivado	7Bso9aSAB	 Function BDD::operator~() causing Vivado crash, leading to synthesis process interruption.

vivado	7EtNRRSA3	 Crashes During Synthesis, Involving Function HARTNDb::map() in Vivado.

vivado	7Dvx95SAB	 GLogicGenerate::createFunctionForBinary function causes synthesis interruption.

vivado	7HnIsxSAF	 Function optimizePass2() terminates the synthesis process prematurely.

yosys	   3848	     Optimization passes such as opt_clean and opt_reduce  has resulted in errors in register assignment.

yosys	   3867	     Inconsistency Issue in Synthesis and Simulation Results with  opt_expr -fine Pass.

vivado	7Ogcx6SAB	 The control_set_opt_threshold  Parameters Resulted in Inversion Operation Error.

yosys	   3895	     Inconsistency Issue with Continuous Assignment Error after FSM Optimization using opt_dff.

yosys	   4010		   Synthesis optimization error, inconsistent simulation results.

yosys	   3876	     Memory overflow leading to Yosys crash.



