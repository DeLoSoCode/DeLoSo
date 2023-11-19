# DeLoSo
We propose DeLoSo, the first method for DEtecting LOgic Synthesis Optimization bugs. DeLoSo relies on netlist differences and parameter variations to guide the generation of diverse logic synthesis optimization configuration (LSOC) combinations to thoroughly test the optimization process. 

We systematically investigated 18 core logic synthesis optimization configuration parameters, including cascade_dsp and directive , in the commercial logic synthesis tool Vivado (latest version 2023.1). Additionally, we explored 21 core logic synthesis optimization configuration parameters, such as opt_lut and opt_expr, in the open-source synthesis tool Yosys (latest version 0.30+48).

We have reported a total of 18 optimization bugs in Vivado and Yosys. These bugs comprise 13 functional bugs resulting from inconsistent outputs, 3 crash bugs, and 2 performance bug caused by memory overflow.
ID	Synthesis tools	Bug ID	Types of bug	Title	State
1	vivado	7AD9ZWSA1	Functional bug	Incorrect Functionality of unsigned() System Function Due to  Synthesis Parameters 	Confirmed and fixed
2	vivado	7EruaNSAR	Functional bug	An error occurred in the evaluation, resulting in incorrect simulation results.	Confirmed and fixed
3	vivado	7Dv91gSAB	Functional bug	Inconsistency Issue Arising from Interactions of Parameters like max_bram and max_uram	Confirmed and fixed
4	vivado	7D1KRBSA3	Functional bug	Bitwise XOR Operation Error Occurs During Synthesis of Design File Due to Custom Parameters	Confirmed and fixed
5	vivado	7PhRiCSAV	Functional bug	Signal and expression splicing errors occur during synthesis	Confirmed and fixed
6	vivado	7UmkalSAB	Functional bug	Shift Operation Error Occurs in the Synthesis Process	Confirmed and fixed
7	vivado	7UmkM2SAJ	Functional bug	The synthesis parameter shreg_min_size causes errors in the simulation results	Confirmed and fixed
8	vivado	7ZIdZvSAL	Functional bug	The parameter "flatten_hierarchy" during logic synthesis leads to incorrect simulation results	Confirmed and fixed
9	vivado	7Bso9aSAB	Performance bug	Function BDD::operator~() causing Vivado crash, leading to synthesis process interruption.	Confirmed and fixed
10	vivado	7EtNRRSA3	Crash bug	Crashes During Synthesis, Involving Function HARTNDb::map() in Vivado	Confirmed and fixed
11	vivado	7Dvx95SAB	Crash bug	GLogicGenerate::createFunctionForBinary function causes synthesis interruption	Confirmed and fixed
12	vivado	7HnIsxSAF	Crash bug	Function optimizePass2() terminates the synthesis process prematurely	Confirmed and fixed
13	yosys	3848	Functional bug	Optimization passes such as opt_clean and opt_reduce  has resulted in errors in register assignment.	Confirmed and fixed
14	yosys	3867	Functional bug	Inconsistency Issue in Synthesis and Simulation Results with  opt_expr -fine Pass	Confirmed and fixed
15	vivado	7Ogcx6SAB	Functional bug	The control_set_opt_threshold  Parameters Resulted in Inversion Operation Error	pending-verification
16	yosys	3895	Functional bug	Inconsistency Issue with Continuous Assignment Error after FSM Optimization using opt_dff	pending-verification
17	yosys	4010	Functional bug	Synthesis optimization error, inconsistent simulation results	pending-verification
18	yosys	3876	Performance bug	Memory overflow leading to Yosys crash	pending-verification


