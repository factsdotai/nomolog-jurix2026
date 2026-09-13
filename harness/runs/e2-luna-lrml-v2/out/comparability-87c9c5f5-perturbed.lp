% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 16cec54c44b1c40e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- assessed_on_final_capacity(effective_rated_output).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
