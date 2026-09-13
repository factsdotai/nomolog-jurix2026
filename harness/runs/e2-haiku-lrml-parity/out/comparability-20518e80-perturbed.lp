% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bed83f7248948f1d
applies :- heat_loss_calculation(HeatLossCalculation), heat_loss_calculation(building_design).
obligation_met(HeatLossCalculation) :- heat_loss_calculation(HeatLossCalculation), uses_design_air_leakage_value(HeatLossCalculation).
r1: violation <= heat_loss_calculation(HeatLossCalculation), heat_loss_calculation(building_design), not obligation_met(HeatLossCalculation).
