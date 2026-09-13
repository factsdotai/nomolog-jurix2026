applies :- compartment_wall_mid_span(W).
r1: violation <= compartment_wall_mid_span(W), deflection_allowance(W, A), A < 40.
r2: exempt <= compartment_wall_mid_span(W), justified_deflection_value(W, J), J < 40, deflection_allowance(W, A), A >= J.
#conflict violation, exempt.
r2 > r1.
