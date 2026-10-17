# Level 2 — Task 2: RTL-to-Synthesis Flow

## Simulate
```sh
iverilog -g2012 -Wall -o alu_sim rtl/alu4.v tb/tb_alu4.v
vvp alu_sim
gtkwave alu4.vcd
```

## Synthesize with Yosys
From this task directory:
```sh
mkdir -p build
yosys -s synth/synth.ys | tee build/yosys_report.txt
```
The script checks hierarchy, lowers procedural logic, optimizes, synthesizes, prints cell statistics and writes `build/alu4_netlist.v`. Review the actual Yosys report and retain it in the submission; no area/timing numbers are pre-filled because they depend on the installed Yosys version and target flow.
