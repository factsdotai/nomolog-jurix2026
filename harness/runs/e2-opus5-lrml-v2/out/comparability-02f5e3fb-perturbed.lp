% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 1d7e10687cbd7547
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- new_residential_building(building).
obligation_met :- overheating_info_given_to_owner(building).
r1: violation <= new_residential_building(building), not obligation_met.
