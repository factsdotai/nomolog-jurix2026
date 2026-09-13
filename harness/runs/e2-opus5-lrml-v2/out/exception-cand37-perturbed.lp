% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a95733e95c137e62
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met_r1(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance = 40, accommodates_deflection(CompartmentWall).
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met_r1(CompartmentWall).
obligation_met_r2(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), CompartmentWallDeflectionAllowance = CompartmentWallJustifiedDeflectionValue, accommodates_deflection(CompartmentWall).
r2: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), CompartmentWallJustifiedDeflectionValue < 40, not obligation_met_r2(CompartmentWall).
r3: exempt_r2 <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), CompartmentWallJustifiedDeflectionValue < 40.
#conflict violation, exempt_r2.
r3 > r1.
