% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 82d16a0fb6609838
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(CompartmentWall, deflection_value).
obligation_met_r1 :- deflection_value >= 40.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(CompartmentWall, deflection_value), not obligation_met_r1.
obligation_met_r2 :- deflection_value >= justified_value.
r2: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(CompartmentWall, deflection_value), justified_deflection_value(CompartmentWall, justified_value), justified_value < 40, not obligation_met_r2.
r3: exempt_r2 <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(CompartmentWall, deflection_value), justified_deflection_value(CompartmentWall, justified_value), justified_value < 40.
#conflict violation, exempt_r2.
r3 > r1.
