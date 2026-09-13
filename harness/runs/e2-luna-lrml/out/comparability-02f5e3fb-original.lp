% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 62f3ad95e3989ee3
applies :- new_residential_building(building).
obligation_met :- overheating_info_given_to_owner(building).
r1: violation <= new_residential_building(building), not obligation_met.
