% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c4ca545d48fee2ab
applies :- heat_loss_calculation(HeatLossCalculation).
obligation_met(HeatLossCalculation) :- heat_loss_calculation(HeatLossCalculation), uses_design_air_leakage_value(HeatLossCalculation).
r1: violation <= heat_loss_calculation(HeatLossCalculation), not obligation_met(HeatLossCalculation).
