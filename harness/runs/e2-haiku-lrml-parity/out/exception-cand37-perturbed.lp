% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ccc420d181be2961
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), justified_deflection_value(CompartmentWall, deflection_value), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= deflection_value.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
