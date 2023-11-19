# CRITICAL WARNING: [Synth 8-5821] Potential divide by zero
set_msg_config -id {Synth 8-5821} -new_severity {WARNING}

read_verilog rtl.v
synth_design -part xc7k70t -top top
write_verilog -force syn_vivado.v
