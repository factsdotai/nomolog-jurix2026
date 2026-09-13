% exclusion from scope as superior defeasible rule; the "unless" clauses
% cancel the exclusion
applies :- structural_element(E).
r1: violation <= structural_element(E), not required_fire_resistance(E).
r2: exempt <= structural_element(E), supports_only_roof(E), not roof_functions_as_floor(E), not essential_for_fire_wall_stability(E).
#conflict violation, exempt.
r2 > r1.
