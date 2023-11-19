# DeLoSo
## [DeLoSo:New Logic Synthesis Optimization Test Tool](https://github.com/DeLoSoCode/DeLoSo.git)
**The logic synthesis tools we tested include:**
1. **Commercial Logic Synthesis Tool Vivado (latest version 2023.1)**
2. **Open Source Logic Synthesis Tool Yosys (latest version 0.30 + 48)**
***

### Our Works
we propose DeLoSo, the first method for DEtecting LOgic Synthesis Optimization bugs. DeLoSo relies on netlist differences and parameter variations to guide the generation of diverse logic synthesis optimization configuration (LSOC) combinations to thoroughly test the optimization process. DeLoSo consists of three components: a LSOC generator, which generates diverse LSOC combinations through configuration recombination and mutation;
a LSOC diversity evaluator, which assesses the diversity of optimization configurations; and a LSOC validator, which validates the generated LSOC combinations to discover optimization bugs. In two months, DeLoSo identified 18 bugs in two established logic synthesis tools (i.e., Vivado1 and Yosys2); 14 of them have been fixed by vendors. 

***
### Main File
Our method can be found in the 'method' directory, where 'DeLoSoforVivado' includes the main file 'DeLoSoforVivado_main.py' for detecting optimization bugs in the Vivado logic synthesis tool. Similarly, in 'DeLoSoforYosys,' the main file 'DeLoSoforYosys_main.py' is used to detect optimization bugs in the Yosys logic synthesis tool.
***

### Here are the details of these bugs
These errors in the error file can be reproduced using Vivado 2023.1 and Yosys 0.30+48.

You can find all bug files in path `method/optimization bugs`.

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
***
**We've had so much help from Vivado and Yosys staff in finding and confirming bugs. I would like to express my gratitude here.**


