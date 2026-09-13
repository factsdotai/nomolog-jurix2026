% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d8c08f59c6650f15
applies :- conditioning_system(ConditioningSystem).
obligation_met :- assessed_on_final_capacity(effective_rated_output).
r1: violation <= conditioning_system(ConditioningSystem), not obligation_met.
