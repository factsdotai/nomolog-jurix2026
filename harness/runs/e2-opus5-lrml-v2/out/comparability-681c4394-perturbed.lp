% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8e7a39be0c3d0e12
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- appliance(Appliance).
obligation_met(Appliance) :- appliance(Appliance), adjustable_heat_release_rate(Appliance), adjustable_damper(AdjustableDamper).
obligation_met(Appliance) :- appliance(Appliance), adjustable_heat_release_rate(Appliance), thermostatic_control(ThermostaticControl).
r1: violation <= appliance(Appliance), not obligation_met(Appliance).
