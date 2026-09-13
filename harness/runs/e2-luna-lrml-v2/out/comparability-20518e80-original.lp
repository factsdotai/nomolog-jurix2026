% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6b70664635121b54
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- heat_loss_calculation(building_design_solution).
obligation_met :- uses_design_air_leakage_value(building_envelope).
r1: violation <= heat_loss_calculation(building_design_solution), not obligation_met.
