% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 25e7ee1725583efa
applies :- conditioning_system(ConditioningSystem).
obligation_met(ConditioningSystem) :- conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem).
r1: violation <= conditioning_system(ConditioningSystem), not obligation_met(ConditioningSystem).
