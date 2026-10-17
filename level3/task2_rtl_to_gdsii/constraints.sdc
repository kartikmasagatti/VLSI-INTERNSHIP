# Example constraint template. Confirm port names and clock period for your chosen flow.
create_clock -name core_clock -period 20.0 [get_ports clk]
set_input_delay  1.0 -clock core_clock [get_ports {rst_n en}]
set_output_delay 1.0 -clock core_clock [all_outputs]
