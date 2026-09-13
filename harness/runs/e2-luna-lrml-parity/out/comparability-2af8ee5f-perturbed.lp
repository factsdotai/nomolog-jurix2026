% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 49c262aff2140668
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), not obligation_met.
