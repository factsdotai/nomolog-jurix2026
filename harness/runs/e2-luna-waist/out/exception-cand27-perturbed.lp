eligible_structure(E) :- structural_element(E), not supports_only_roof(E).
eligible_structure(E) :- structural_element(E), supports_only_roof(E), roof_functions_as_floor(E).
eligible_structure(E) :- structural_element(E), supports_only_roof(E), essential_for_fire_wall_stability(E).

applies :- eligible_structure(E).

r1: violation <= eligible_structure(E), not required_fire_resistance(E).
