% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ecc5fbfb956b1e8e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not neg_scope_1.
applies :- building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), extracts_outside(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), retained(ExistingFan).
obligation_met(ExistingFan) :- existing_fan(ExistingFan), replaced(ExistingFan).
r1: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), not neg_scope_1, not obligation_met(ExistingFan).
r2: violation <= building_work(BuildingWork), in_kitchen_or_bathroom(BuildingWork), existing_fan(ExistingFan), extracts_outside(ExistingFan), not obligation_met(ExistingFan).
neg_scope_1 :- existing_fan(ExistingFan), cooker_hood(ExistingFan).
