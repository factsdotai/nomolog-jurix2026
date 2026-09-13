% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fded0f89af9076ba
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant justified_deflection_value_compartment_w
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met_r1(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met_r1(CompartmentWall).
obligation_met_r2(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= justified_deflection_value_compartment_w.
r2: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), justified_deflection_value(CompartmentWall), not obligation_met_r2(CompartmentWall).
r3: exempt_r2 <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), justified_deflection_value(CompartmentWall).
#conflict violation, exempt_r2.
r3 > r1.
