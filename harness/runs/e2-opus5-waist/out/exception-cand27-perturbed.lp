% element-of-structure definition with exclusion and counter-exceptions
applies :- structural_element(E).
r1: violation <= structural_element(E), not required_fire_resistance(E).
r2: exempt <= structural_element(E), supports_only_roof(E).
r3: violation <= structural_element(E), supports_only_roof(E), roof_functions_as_floor(E), not required_fire_resistance(E).
r4: violation <= structural_element(E), supports_only_roof(E), essential_for_fire_wall_stability(E), not required_fire_resistance(E).
#conflict violation, exempt.
r2 > r1.
r3 > r2.
r4 > r2.
