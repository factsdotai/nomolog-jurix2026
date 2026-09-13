% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c912cab117f23f63
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= CompartmentWallJustifiedDeflectionValue.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
