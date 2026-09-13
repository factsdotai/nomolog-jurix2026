applies :- structural_element(E), not excluded(E).
excluded(E) :- supports_only_roof(E), not roof_functions_as_floor(E), not essential_for_fire_wall_stability(E).
r1: violation <= structural_element(E), not excluded(E), required_fire_resistance(E, R), not fire_resistance_ok(E, R).
fire_resistance_ok(E, R) :- has_fire_resistance(E, R).
