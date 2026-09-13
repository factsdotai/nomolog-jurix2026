existing_fan_to_retain(F) :- existing_fan(F).
existing_fan_to_retain(F) :- cooker_hood(F), extracts_outside(F).
applies :- building_work(W), in_kitchen_or_bathroom(W), existing_fan_to_retain(F).
r1: violation <= building_work(W), in_kitchen_or_bathroom(W), existing_fan_to_retain(F), not retained(F), not replaced(F).
