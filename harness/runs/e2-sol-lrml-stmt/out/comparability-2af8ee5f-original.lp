% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ff86df95a3b4f971
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan).
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), cooker_hood(CookerHood).
obligation_met :- not neg_scope_1, not neg_scope_2.
obligation_met :- not neg_scope_1, cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- not neg_scope_1, cooker_hood(CookerHood), replaced(CookerHood).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), not neg_scope_3.
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- existing_fan(ExistingFan), retained(ExistingFan), cooker_hood(CookerHood), replaced(CookerHood).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), not neg_scope_4.
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), cooker_hood(CookerHood), retained(CookerHood).
obligation_met :- existing_fan(ExistingFan), replaced(ExistingFan), cooker_hood(CookerHood), replaced(CookerHood).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not obligation_met.
r2: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), cooker_hood(CookerHood), not obligation_met.
neg_scope_1 :- existing_fan(ExistingFan).
neg_scope_2 :- cooker_hood(CookerHood), extracts_outside(CookerHood).
neg_scope_3 :- cooker_hood(CookerHood), extracts_outside(CookerHood).
neg_scope_4 :- cooker_hood(CookerHood), extracts_outside(CookerHood).
