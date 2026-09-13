% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e34c8c2546159bf2
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), retained(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), replaced(ExistingFan).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not obligation_met(ExistingFan).
