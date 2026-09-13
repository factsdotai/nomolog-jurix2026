% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c309bed2f83cfab8
applies :- compartment_wall(CompartmentWall), mid_span_between_vertical_supports(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), justified_deflection_value(CompartmentWall, CompartmentWallJustifiedDeflectionValue), CompartmentWallDeflectionAllowance >= CompartmentWallJustifiedDeflectionValue.
r1: violation <= compartment_wall(CompartmentWall), mid_span_between_vertical_supports(CompartmentWall), not obligation_met(CompartmentWall).
