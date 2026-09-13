% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2c140704ff42cd76
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), justified_deflection_value(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), CompartmentWallDeflectionAllowance >= CompartmentWallJustifiedDeflectionValue.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
