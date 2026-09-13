% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c4ca545d48fee2ab
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- heat_loss_calculation(HeatLossCalculation).
obligation_met(HeatLossCalculation) :- heat_loss_calculation(HeatLossCalculation), uses_design_air_leakage_value(HeatLossCalculation).
r1: violation <= heat_loss_calculation(HeatLossCalculation), not obligation_met(HeatLossCalculation).
