% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4699fde6c5dfd823
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), retained(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), replaced(ExistingFan).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not obligation_met(ExistingFan).
