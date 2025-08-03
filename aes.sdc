set_input_delay 2.0 -clock clk[all_inputs]
set_output_delay 2.0 -clock clk[all_outputs]


create_clock -name clk -period 10.0 [get_ports clk]

set_drive 1[all_inputs]
set_load 1[all_outputs]

set_clk_gatting_style -positive_edge 
set_dont_touch [get_cells *]
