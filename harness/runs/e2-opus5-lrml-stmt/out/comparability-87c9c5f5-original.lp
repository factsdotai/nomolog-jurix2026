% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a0f98598cffa45da
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- assessed_on_final_capacity(system).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
