% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d6f97e0444168f7f
applies :- heat_loss_calculation(building).
obligation_met :- uses_design_air_leakage_value(building).
r1: violation <= heat_loss_calculation(building), not obligation_met.
