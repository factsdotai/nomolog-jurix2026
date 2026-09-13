applies :- building_work(W), in_kitchen_or_bathroom(W).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), existing_fan(F), not fan_ok(F).
fan_ok(F) :- retained(F).
fan_ok(F) :- replaced(F).
