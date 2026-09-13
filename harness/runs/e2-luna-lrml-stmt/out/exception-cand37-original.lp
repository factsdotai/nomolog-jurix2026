% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3927b30d58f8218b
% term-flattened: nested call -> constant deflection_allowance_wall
% term-flattened: nested call -> constant justified_deflection_value_wall
% term-flattened: nested call -> constant deflection_allowance_wall
% term-flattened: nested call -> constant justified_deflection_value_wall
% term-flattened: nested call -> constant deflection_allowance_wall
% term-flattened: nested call -> constant deflection_allowance_wall
applies :- compartment_wall_mid_span(wall).
obligation_met :- deflection_allowance_wall = 40, accommodate(wall_design, deflection_allowance_wall).
obligation_met :- justified_deflection_value_wall < 40, deflection_allowance_wall = justified_deflection_value_wall, accommodate(wall_design, deflection_allowance_wall).
r1: violation <= compartment_wall_mid_span(wall), not obligation_met.
