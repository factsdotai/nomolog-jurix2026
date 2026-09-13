% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 3e45cd3b015e6b20
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- heating_system(HeatingSystem), air_conditioning_system(AirConditioningSystem).
obligation_met(HeatingSystem) :- heating_system(HeatingSystem), assessed_on_final_capacity(HeatingSystem).
r1: violation <= heating_system(HeatingSystem), air_conditioning_system(AirConditioningSystem), not obligation_met(HeatingSystem).
