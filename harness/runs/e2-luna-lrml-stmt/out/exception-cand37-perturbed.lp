% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7fca1d7b43a9f4e5
% term-flattened: nested call -> constant deflection_allowance_compartment_wall
% term-flattened: nested call -> constant deflection_allowance_compartment_wall
applies :- compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall).
obligation_met(CompartmentWall) :- deflection_allowance_compartment_wall = 40, compartment_wall(CompartmentWall), accommodates_assumed_deflection(CompartmentWall).
obligation_met(CompartmentWall) :- deflection_allowance_compartment_wall < 40, compartment_wall(CompartmentWall), justified_deflection_value(CompartmentWall), accommodates_assumed_deflection(CompartmentWall).
r1: violation <= compartment_wall(CompartmentWall), compartment_wall_mid_span(CompartmentWall), not obligation_met(CompartmentWall).
