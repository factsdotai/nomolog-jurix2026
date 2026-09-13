% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 25e7ee1725583efa
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- conditioning_system(ConditioningSystem).
obligation_met(ConditioningSystem) :- conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem).
r1: violation <= conditioning_system(ConditioningSystem), not obligation_met(ConditioningSystem).
