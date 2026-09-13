% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9c06c3937aae3eab
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan).
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), cooker_hood(CookerHood), extracts_outside(CookerHood).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan).
obligation_met :- cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- cooker_hood(CookerHood), replaced(CookerHood).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not obligation_met.
r2: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), cooker_hood(CookerHood), extracts_outside(CookerHood), not obligation_met.
