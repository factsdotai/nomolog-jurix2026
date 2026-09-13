applies :- building_work(W), in_kitchen_or_bathroom(W), existing_fan(F).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), existing_fan(F), extracts_outside(F), not retention_or_replacement_ok(F).
retention_or_replacement_ok(F) :- retained(F).
retention_or_replacement_ok(F) :- replaced(F).
