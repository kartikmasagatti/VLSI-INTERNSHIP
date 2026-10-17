# SAN Web Technology — VLSI Internship Submission Pack (2026)

This project pack maps to all nine tasks listed in the supplied internship guide. It includes RTL, testbenches, simulation commands, synthesis/flow configuration examples, and README files for each task.

## Task coverage
| Level | Task | Included |
|---|---|---|
| 1 | 1. Logic Gates & RTL Simulation | RTL, testbench, expected waveform reference, README |
| 1 | 2. RTL & Testbench Practice | Counter/register RTL, testbench, CLI commands, README |
| 1 | 3. Git-to-RTL Verification Flow | Edge-counter RTL, testbench, Git workflow, README |
| 2 | 1. Parameterized RTL Module | Parameterized counter RTL, testbench, README |
| 2 | 2. RTL-to-Synthesis Flow | 4-bit ALU, testbench, Yosys script, README |
| 2 | 3. FSM Verification & Data Flow | Sequence controller, testbench, state flow notes, README |
| 3 | 1. Automated RTL Verification | GitHub Actions YAML, setup instructions, README |
| 3 | 2. RTL-to-GDSII Mini Flow | OpenLane-style config template, SDC, stage checklist, README |
| 3 | 3. Timing, Area & Power Review | Measurement template and checklist, README |

## Tool status and evidence honesty
The current environment used to assemble this pack did not have Icarus Verilog, GTKWave, Yosys or OpenROAD installed. Therefore the waveform images in the report are clearly marked **expected/reference timing diagrams**, not screenshots captured from a simulator. RTL and scripts are supplied so you can run them on your configured machine. Replace/add actual simulator screenshots, generated VCDs, synthesis reports, GitHub Actions evidence and physical-design reports after running the tools.

## Quick start (Icarus Verilog + GTKWave)
Example for Level 1 Task 2:
```sh
cd level1/task2_rtl_testbench
mkdir -p build
iverilog -g2012 -Wall -o build/task2_sim rtl/counter_register.v tb/tb_counter_register.v
vvp build/task2_sim | tee command_log.txt
gtkwave task2_counter_register.vcd
```

## Submission items still requiring your own run/account
- Push the repository and add its actual URL.
- Generate actual waveforms and capture GTKWave screenshots after running testbenches.
- Run Yosys/OpenLane/OpenROAD tasks in a correctly configured environment and retain real reports/screenshots.
- Add your real LinkedIn completion/project post and tag the official SAN Web Technology handle provided by the company.
- Submit/deposit through the method provided by SAN Web Technology.
- Do not publish secrets, licensed PDKs, credentials or private IP.
