applies :- structural_element(E), not supports_only_roof(E).
applies :- structural_element(E), supports_only_roof(E), roof_functions_as_floor(E).
applies :- structural_element(E), supports_only_roof(E), essential_for_fire_wall_stability(E).

r1: violation <= structural_element(E), not supports_only_roof(E), not required_fire_resistance(E).
r2: violation <= structural_element(E), supports_only_roof(E), roof_functions_as_floor(E), not required_fire_resistance(E).
r3: violation <= structural_element(E), supports_only_roof(E), essential_for_fire_wall_stability(E), not required_fire_resistance(E).
