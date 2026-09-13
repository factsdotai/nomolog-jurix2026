% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bb8af6b7e41e2b0d
applies :- heat_loss_calculation(HeatLossCalculation), building_envelope(BuildingEnvelope).
obligation_met(HeatLossCalculation) :- heat_loss_calculation(HeatLossCalculation), uses_design_air_leakage_value(HeatLossCalculation).
r1: violation <= heat_loss_calculation(HeatLossCalculation), building_envelope(BuildingEnvelope), not obligation_met(HeatLossCalculation).
