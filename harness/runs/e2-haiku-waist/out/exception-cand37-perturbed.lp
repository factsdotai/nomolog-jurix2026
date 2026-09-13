applies :- compartment_wall_mid_span(W).
r1: violation <= compartment_wall_mid_span(W), not deflection_ok(W).
deflection_ok(W) :- deflection_allowance(W, D), D >= 40.
r2: exempt <= compartment_wall_mid_span(W), justified_deflection_value(W, J), deflection_allowance(W, D), D >= J.
#conflict violation, exempt.
r2 > r1.
