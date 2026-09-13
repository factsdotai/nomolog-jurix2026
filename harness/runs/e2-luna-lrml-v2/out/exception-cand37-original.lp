% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e1c4876a2d55e64e
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- compartment_wall_mid_span(compartment_wall).
obligation_met_r1 :- deflection_allowance(compartment_wall, 40), accommodates_assumed_deflection(compartment_wall).
r1: violation <= compartment_wall_mid_span(compartment_wall), not obligation_met_r1.
obligation_met_r2 :- deflection_allowance(compartment_wall, smaller_value), accommodates_assumed_deflection(compartment_wall).
r2: violation <= compartment_wall_mid_span(compartment_wall), justified_deflection_value(compartment_wall, smaller_value), not obligation_met_r2.
r3: exempt_r2 <= compartment_wall_mid_span(compartment_wall), justified_deflection_value(compartment_wall, smaller_value).
#conflict violation, exempt_r2.
r3 > r1.
