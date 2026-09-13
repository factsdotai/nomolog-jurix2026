% default 40mm assumption, defeasible by a justified smaller value
applies :- compartment_wall_mid_span(W).
r1: violation <= compartment_wall_mid_span(W), deflection_allowance(W, D), D < 40.
r2: exempt <= compartment_wall_mid_span(W), justified_deflection_value(W, J), J < 40, deflection_allowance(W, D), D >= J.
#conflict violation, exempt.
r2 > r1.
