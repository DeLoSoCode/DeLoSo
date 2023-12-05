# DeLoSo
## [DeLoSo:New Logic Synthesis Optimization Test Tool](https://github.com/DeLoSoCode/DeLoSo.git)
**The logic synthesis tools we tested include:**
1. **Commercial Logic Synthesis Tool Vivado (latest version 2023.1)**
2. **Open Source Logic Synthesis Tool Yosys (latest version 0.30 + 48)**
***

**Env dependencies:**
1. **Vivado 2023.1**
2. **Yosys 0.30 + 48**
3. **Icarus Verilog 13.0**
4. **Verismith 1.0.0.2**
5. **python 3.8**
6. **GHC 8.6.5**
7. **Cabal 3.6.0**
8. **Stack 2.9.3**
9. **HLS 2.0.0.1**
***

### Our Works
Logic synthesis tools are the core components of digital circuit design, which  convert programs written in hardware description languages into gate-level netlists, and optimize the netlists. However, the netlist optimization is complex, with numerous optimization parameters to be configured. Any minor optimization bugs in logic synthesis tools may cause circuit diagrams to significantly deviate from the original design, posing risks in target systems. To this end, we propose DeLoSo, the first method for DEtecting LOgic Synthesis Optimization bugs. DeLoSo relies on netlist differences and parameter variations to guide the generation of diverse logic synthesis optimization configuration (LSOC) combinations to thoroughly test the optimization process. DeLoSo consists of three components: a LSOC generator, which generates diverse LSOC combinations through configuration recombination and mutation; a LSOC diversity evaluator, which assesses the diversity of optimization configurations; and a LSOC validator, which validates the generated LSOC combinations to discover optimization bugs. In two months, DeLoSo identified 18 bugs in two established logic synthesis tools (i.e., Vivado and Yosys); 14 of them have been fixed by vendors. 

***
### Main File
Our methodology is located in the 'method' directory:

1.DeLoSoforVivado folder:

This folder includes DeLoSoforVivado.py and DeLoSoforVivado_main.py files. DeLoSoforVivado.py comprises our LSOC (Loop Structure Obfuscation Criteria) generator and LSOC diversity evaluator, while DeLoSoforVivado_main.py incorporates the LSOC validator. The main function is also embedded in DeLoSoforVivado_main.py. By assigning the actual test case path to the variable 'files_path' in line 38 and executing the DeLoSoforVivado_main.py file, we can conduct testing on optimization bugs in Vivado. 

2.DeLoSoforYosys folder:

This folder contains DeLoSoforYosys.py and DeLoSoforYosys_main.py files. Similarly, by executing the DeLoSoforYosys_main.py file, we can conduct testing on optimization bugs in Yosys.

3.example folder:

This folder contains two test cases automatically generated using the Verismith tool. In our experiments, all test cases are program codes generated through the Verismith tool.

4.optimization bugs folder:

This folder encompasses optimization bugs discovered in the Vivado and Yosys logic synthesis tools. Each bug file includes a bug_description.txt, providing details on the triggering conditions and an explanation of the bug issues.
***

### Here are the details of these bugs
These errors in the error file can be reproduced using Vivado 2023.1 and Yosys 0.30+48.

You can find all bug files in path `method/optimization bugs`.

bug1：vivado	7AD9ZWSA1	 Incorrect Functionality of unsigned() System Function Due to  Synthesis Parameters.

bug2：vivado	7EruaNSAR  An error occurred in the evaluation, resulting in incorrect simulation results.

bug3：vivado	7Dv91gSAB	 Inconsistency Issue Arising from Interactions of Parameters like max_bram and max_uram.

bug4：vivado	7D1KRBSA3	 Bitwise XOR Operation Error Occurs During Synthesis of Design File Due to Custom Parameters.

bug5：vivado	7PhRiCSAV	 Signal and expression splicing errors occur during synthesis.

bug6：vivado	7UmkalSAB	 Shift Operation Error Occurs in the Synthesis Process.

bug7：vivado	7UmkM2SAJ	 The synthesis parameter shreg_min_size causes errors in the simulation results.

bug8：vivado	7ZIdZvSAL	 The parameter "flatten_hierarchy" during logic synthesis leads to incorrect simulation results.

bug9：vivado	7Bso9aSAB	 Function BDD::operator~() causing Vivado crash, leading to synthesis process interruption.

bug10：vivado	7EtNRRSA3	 Crashes During Synthesis, Involving Function HARTNDb::map() in Vivado.

bug11：vivado	7Dvx95SAB	 GLogicGenerate::createFunctionForBinary function causes synthesis interruption.

bug12：vivado	7HnIsxSAF	 Function optimizePass2() terminates the synthesis process prematurely.

bug13：yosys	   3848	     Optimization passes such as opt_clean and opt_reduce  has resulted in errors in register assignment.

bug14：yosys	   3867	     Inconsistency Issue in Synthesis and Simulation Results with  opt_expr -fine Pass.

bug15：vivado	7Ogcx6SAB	 The control_set_opt_threshold  Parameters Resulted in Inversion Operation Error.

bug16：yosys	   3895	     Inconsistency Issue with Continuous Assignment Error after FSM Optimization using opt_dff.

bug17：yosys	   4010		   Synthesis optimization error, inconsistent simulation results.

bug18：yosys	   3876	     Memory overflow leading to Yosys crash.
***
**We've had so much help from Vivado and Yosys staff in finding and confirming bugs. I would like to express my gratitude here.**


