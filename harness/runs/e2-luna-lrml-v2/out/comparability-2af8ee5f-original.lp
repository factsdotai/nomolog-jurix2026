% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 749c46238b2dc6f9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_work(work), in_kitchen_or_bathroom(work), existing_fan(fan).
applies :- building_work(work), in_kitchen_or_bathroom(work), cooker_hood(fan), extracts_outside(fan).
obligation_met :- retained(fan).
obligation_met :- replaced(fan).
r1: violation <= building_work(work), in_kitchen_or_bathroom(work), existing_fan(fan), not obligation_met.
r2: violation <= building_work(work), in_kitchen_or_bathroom(work), cooker_hood(fan), extracts_outside(fan), not obligation_met.
