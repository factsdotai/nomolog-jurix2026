relevant_structural_element(E) :- structural_element(E), not supports_only_roof(E).
relevant_structural_element(E) :- structural_element(E), supports_only_roof(E), roof_functions_as_floor(E).
relevant_structural_element(E) :- structural_element(E), supports_only_roof(E), essential_for_fire_wall_stability(E).

applies :- relevant_structural_element(E).

r1: violation <= relevant_structural_element(E), not required_fire_resistance(E).
