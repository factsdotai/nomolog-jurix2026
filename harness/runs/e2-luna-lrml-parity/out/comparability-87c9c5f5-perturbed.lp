% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 30882720cc2126cd
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- assessed_on_final_capacity(effective_rated_output).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
