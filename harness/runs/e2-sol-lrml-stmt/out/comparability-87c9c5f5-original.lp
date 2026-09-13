% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 28eb96f029593034
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- boiler(Boiler), assessed_on_final_capacity(Boiler), conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
