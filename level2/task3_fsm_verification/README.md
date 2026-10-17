# Level 2 — Task 3: FSM Verification & Data Flow

The controller uses IDLE → LOAD → STEP → FINISH → IDLE. `start` initiates a transaction from IDLE. `busy`, `done` and `data` expose the state-dependent behavior.

```sh
iverilog -g2012 -Wall -o fsm_sim rtl/sequence_controller.v tb/tb_sequence_controller.v
vvp fsm_sim
gtkwave sequence_controller.vcd
```
Verify reset returns the controller to IDLE, all four legal states occur, and `done` is asserted in FINISH. The supplied testbench is a basic directed test; extend it with assertions or self-checking comparisons before claiming exhaustive verification.
