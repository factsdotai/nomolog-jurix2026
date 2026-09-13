% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2f6901edc8fe383e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- heat_loss_calculation(calculation).
obligation_met :- uses_design_air_leakage_value(calculation).
r1: violation <= heat_loss_calculation(calculation), not obligation_met.
