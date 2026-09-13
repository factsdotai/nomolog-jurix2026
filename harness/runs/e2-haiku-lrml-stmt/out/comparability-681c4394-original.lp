% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6d78811316592b85
applies :- appliance(Appliance).
obligation_met :- adjustable_damper(AdjustableDamper).
obligation_met :- thermostatic_control(ThermostaticControl).
r1: violation <= appliance(Appliance), not obligation_met.
