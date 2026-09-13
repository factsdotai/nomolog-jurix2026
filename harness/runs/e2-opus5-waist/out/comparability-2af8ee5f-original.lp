applies :- building_work(W), in_kitchen_or_bathroom(W).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), existing_fan(F), not fan_ok(F).
r2: violation <= building_work(W), in_kitchen_or_bathroom(W), cooker_hood(H), extracts_outside(H), not fan_ok(H).
fan_ok(F) :- retained(F).
fan_ok(F) :- replaced(F).
