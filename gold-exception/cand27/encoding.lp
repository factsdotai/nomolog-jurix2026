% Scope-defeat: the carve-out defeats BOTH applicability and the norm (r3 > r2,
% r3 > r1); the exception-to-the-exception sits inside the carve-out as a guard.
r2: applies <= structural_element(E).
r1: violation <= structural_element(E), not required_fire_resistance(E).
r3: out_of_scope <= structural_element(E), supports_only_roof(E), not roof_exception(E).
roof_exception(E) :- roof_functions_as_floor(E).
roof_exception(E) :- essential_for_fire_wall_stability(E).
#conflict applies, out_of_scope.
#conflict violation, out_of_scope.
r3 > r2.
r3 > r1.
