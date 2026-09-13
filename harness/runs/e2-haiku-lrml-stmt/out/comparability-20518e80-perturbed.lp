% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dbc23e37abe35331
applies :- heat_loss_calculation(HeatLossCalculation), heat_loss_calculation(building_design).
obligation_met :- uses_design_air_leakage_value(building).
r1: violation <= heat_loss_calculation(HeatLossCalculation), heat_loss_calculation(building_design), not obligation_met.
