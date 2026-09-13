% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7be7e53941894320
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- calculation(Calculation), heat_loss_calculation(Calculation).
obligation_met(Calculation) :- calculation(Calculation), uses_design_air_leakage_value(Calculation).
r1: violation <= calculation(Calculation), heat_loss_calculation(Calculation), not obligation_met(Calculation).
