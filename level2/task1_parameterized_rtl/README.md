# Level 2 — Task 1: Parameterized RTL Module

A reusable width-configurable counter is instantiated at 4 bits and 8 bits. The 8-bit instance demonstrates a nonzero reset value.

```sh
iverilog -g2012 -Wall -o counter_sim rtl/parameterized_counter.v tb/tb_parameterized_counter.v
vvp counter_sim
gtkwave parameterized_counter.vcd
```
Check reset values, enable hold behavior and wraparound for the 4-bit instance. Review warnings before submission.
