# Level 1 — Task 2: RTL & Testbench Practice

## Goal
Verify a clocked counter and register block under reset, enable, normal operation and boundary/wraparound conditions.

## Run
```sh
mkdir -p build
iverilog -g2012 -Wall -o build/task2_sim rtl/counter_register.v tb/tb_counter_register.v
vvp build/task2_sim | tee command_log.txt
gtkwave task2_counter_register.vcd
```
The testbench creates `task2_counter_register.vcd`. Check that reset clears both outputs, `en=1` increments the counter and captures `data_in`, and `en=0` holds the prior values.

## Important commands (short explanation)
1. `iverilog -g2012 ...` compiles RTL and testbench into a simulation executable.
2. `-Wall` requests compiler warnings.
3. `vvp build/task2_sim` runs the compiled simulation.
4. `tee command_log.txt` displays output and saves the command log.
5. `gtkwave task2_counter_register.vcd` opens the waveform viewer.
