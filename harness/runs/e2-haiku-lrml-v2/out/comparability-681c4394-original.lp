% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6d78811316592b85
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- appliance(Appliance).
obligation_met :- adjustable_damper(AdjustableDamper).
obligation_met :- thermostatic_control(ThermostaticControl).
r1: violation <= appliance(Appliance), not obligation_met.
