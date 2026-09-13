% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0fda5ccec5682188
applies :- appliance(Appliance).
obligation_met(Appliance) :- appliance(Appliance), adjustable_damper(Appliance).
obligation_met(Appliance) :- appliance(Appliance), thermostatic_control(Appliance).
r1: violation <= appliance(Appliance), not obligation_met(Appliance).
