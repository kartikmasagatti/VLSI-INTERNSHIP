# RTL-to-GDSII flow stages

1. **RTL checks and synthesis:** elaborate the design and map RTL into a gate-level netlist.
2. **Floorplan:** define core/die dimensions and place I/O and power structures as supported by the flow.
3. **Placement:** assign standard-cell locations and optimize placement.
4. **Clock-tree synthesis:** build a clock distribution network if required/enabled.
5. **Routing:** connect nets using available routing layers.
6. **Signoff-oriented checks:** inspect timing, design-rule and electrical reports supported by the chosen flow.
7. **GDSII export:** generate final layout database only if the configured flow and PDK support it.

Record tool versions, configuration, constraints, warnings/errors and the exact run directory. Do not commit licensed PDKs or private credentials.
