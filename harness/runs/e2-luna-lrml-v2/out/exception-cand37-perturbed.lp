% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9f6e6c84815f0d08
% n_statements: 3  n_overrides: 1  dangling: 0
% override-inert: r1 has no violation rules
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(DeflectionAllowance).
% permission: no violation rule (policy P4)
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), accommodates(compartment_wall_design, CompartmentWallDeflectionAllowance).
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), deflection_allowance(DeflectionAllowance), not obligation_met(CompartmentWall).
