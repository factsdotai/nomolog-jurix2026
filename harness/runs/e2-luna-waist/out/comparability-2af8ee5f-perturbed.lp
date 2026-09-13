applies :- building_work(W), in_kitchen_or_bathroom(W).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), existing_fan(F), not retained(F), not replaced(F).
r2: violation <= building_work(W), in_kitchen_or_bathroom(W), cooker_hood(H), extracts_outside(H), not retained(H), not replaced(H).
