% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 28a255e1a0a90996
applies :- heating_system(HeatingSystem), air_conditioning_system(AirConditioningSystem).
obligation_met(HeatingSystem) :- heating_system(HeatingSystem), assessed_on_final_capacity(HeatingSystem).
r1: violation <= heating_system(HeatingSystem), air_conditioning_system(AirConditioningSystem), not obligation_met(HeatingSystem).
