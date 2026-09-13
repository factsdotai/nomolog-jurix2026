% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4e5a88f051c2ee9d
applies :- heat_loss_calculation(c1).
obligation_met :- uses_design_air_leakage_value(c1).
r1: violation <= heat_loss_calculation(c1), not obligation_met.
