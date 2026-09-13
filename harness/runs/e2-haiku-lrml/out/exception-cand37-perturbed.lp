% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ed8134e07855327b
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection(CompartmentWall, CompartmentWallDeflection), CompartmentWallDeflection <= 40, justified_deflection_value(CompartmentWall, x).
obligation_met(CompartmentWall) :- compartment_wall(CompartmentWall), deflection(CompartmentWall, CompartmentWallDeflection), CompartmentWallDeflection <= 40, deflection_allowance(CompartmentWall, CompartmentWallDeflectionAllowance), CompartmentWallDeflectionAllowance >= 40.
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
