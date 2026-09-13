% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c22a069345c61ccc
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), cooker_hood(CookerHood), not neg_scope_1.
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), cooker_hood(CookerHood), replaced(CookerHood).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), cooker_hood(CookerHood), not neg_scope_2.
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), cooker_hood(CookerHood), replaced(CookerHood).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), not obligation_met.
neg_scope_1 :- cooker_hood(CookerHood), extracts_outside(CookerHood).
neg_scope_2 :- cooker_hood(CookerHood), extracts_outside(CookerHood).
