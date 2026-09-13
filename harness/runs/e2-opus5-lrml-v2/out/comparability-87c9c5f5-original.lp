% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e0457c9a799ec8a0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- boiler(Boiler).
applies :- conditioning_system(ConditioningSystem).
obligation_met :- effective_rated_output(System, SystemEffectiveRatedOutput), assessed_on_final_capacity(SystemEffectiveRatedOutput).
r1: violation <= boiler(Boiler), not obligation_met.
r2: violation <= conditioning_system(ConditioningSystem), not obligation_met.
