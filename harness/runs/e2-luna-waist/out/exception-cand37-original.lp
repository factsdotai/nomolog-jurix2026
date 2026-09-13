applies :- compartment_wall_mid_span(W).
r1: default_assumed_deflection(W) <= compartment_wall_mid_span(W).
r2: justified_assumed_deflection(W, J) <= compartment_wall_mid_span(W), justified_deflection_value(W, J), J < 40.
#conflict default_assumed_deflection, justified_assumed_deflection.
r2 > r1.
r3: violation <= compartment_wall_mid_span(W), default_assumed_deflection(W), deflection_allowance(W, A), A < 40.
r4: violation <= compartment_wall_mid_span(W), justified_assumed_deflection(W, J), deflection_allowance(W, A), A < J.
