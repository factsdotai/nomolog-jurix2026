% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b10152c2956ab63e
applies :- heat_loss_calculation(HeatLossCalculation), building_envelope(BuildingEnvelope).
obligation_met(BuildingEnvelope) :- building_envelope(BuildingEnvelope), uses_design_air_leakage_value(BuildingEnvelope).
r1: violation <= heat_loss_calculation(HeatLossCalculation), building_envelope(BuildingEnvelope), not obligation_met(BuildingEnvelope).
