% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 19b7292e777ebba8
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
