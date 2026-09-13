% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 860fc2b621406474
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- heat_loss_calculation(x).
obligation_met :- uses_design_air_leakage_value(x).
r1: violation <= heat_loss_calculation(x), not obligation_met.
