# Level 1 — Task 3: Git-to-RTL Verification Flow

## Goal
Track RTL changes in Git and rerun verification after each meaningful change.

## Run simulation
```sh
iverilog -g2012 -o edge_sim rtl/edge_counter.v tb/tb_edge_counter.v
vvp edge_sim
gtkwave task3_edge_counter.vcd
```

## Suggested Git workflow
```sh
git init
git add .
git commit -m "Add edge counter RTL and testbench"
# Make a meaningful RTL or testbench change, then:
iverilog -g2012 -o edge_sim rtl/edge_counter.v tb/tb_edge_counter.v
vvp edge_sim
git add .
git commit -m "Verify edge counter boundary behavior"
```
Record the commit ID and attach the passing simulation output/waveform in your final repository. Do not claim a test passed until you run it locally.
