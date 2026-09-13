% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 49713416d6b97d83
applies :- heat_loss_calculation(HeatLossCalculation).
obligation_met :- uses_design_air_leakage_value(building_envelope).
r1: violation <= heat_loss_calculation(HeatLossCalculation), not obligation_met.
