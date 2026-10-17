# Level 1 — Task 1: Logic Gates & RTL Simulation

## Goal
Implement AND, OR, XOR, NAND and a 2:1 multiplexer, test every input combination, and inspect a waveform.

## Files
- `rtl/logic_gates.v` — combinational RTL.
- `tb/tb_logic_gates.v` — testbench and VCD dump.
- `waveforms/task1_logic_gates_reference.png` — expected timing reference, not a simulator capture.

## Run with Icarus Verilog
From this task directory:
```sh
mkdir -p build waveforms
iverilog -g2012 -o build/simv rtl/logic_gates.v tb/tb_logic_gates.v
vvp build/simv
gtkwave task1_logic_gates.vcd
```
Expected: all four gate outputs follow their truth tables; mux output is `a` when `sel=0` and `b` when `sel=1`.
