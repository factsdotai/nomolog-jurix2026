% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 290f5d06b9173aa2
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- appliance(Appliance).
obligation_met(Appliance) :- appliance(Appliance), adjustable_heat_release(Appliance), adjustable_damper(Appliance).
obligation_met(Appliance) :- appliance(Appliance), adjustable_heat_release(Appliance), thermostatic_control(Appliance).
r1: violation <= appliance(Appliance), not obligation_met(Appliance).
