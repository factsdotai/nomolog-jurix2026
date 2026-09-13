% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 1fdcc2ebd066620f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem).
obligation_met(ConditioningSystem) :- conditioning_system(ConditioningSystem), effective_rated_output(ConditioningSystem, ConditioningSystemEffectiveRatedOutput), final_installed_capacity(ConditioningSystem, ConditioningSystemFinalInstalledCapacity), ConditioningSystemEffectiveRatedOutput = ConditioningSystemFinalInstalledCapacity.
r1: violation <= conditioning_system(ConditioningSystem), assessed_on_final_capacity(ConditioningSystem), not obligation_met(ConditioningSystem).
