applies :- building_work(W), in_kitchen_or_bathroom(W).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), relevant_fan(F), not fan_ok(F).
relevant_fan(F) :- existing_fan(F), not cooker_hood(F).
relevant_fan(F) :- cooker_hood(F), extracts_outside(F).
fan_ok(F) :- retained(F).
fan_ok(F) :- replaced(F).
