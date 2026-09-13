applies :- compartment_wall_mid_span(W).
r1: violation <= compartment_wall_mid_span(W), deflection_allowance(W, D), D < 40.
r2: exempt <= compartment_wall_mid_span(W), deflection_allowance(W, D), justified_deflection_value(W, J), D < 40, D >= J.
#conflict violation, exempt.
r2 > r1.
