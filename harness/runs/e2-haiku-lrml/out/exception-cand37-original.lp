% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f84e550bff2a7ca7
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40, accommodate_deflection(CompartmentWall).
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
