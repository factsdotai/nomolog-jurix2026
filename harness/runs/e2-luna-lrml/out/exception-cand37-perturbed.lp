% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c413df5fc82f1dd5
% term-flattened: nested call -> constant deflection_allowance_wall
% term-flattened: nested call -> constant deflection_allowance_wall
applies :- compartment_wall_mid_span(wall).
obligation_met :- deflection_allowance(wall, 40), accommodates(wall_design, deflection_allowance_wall).
obligation_met :- justified_deflection_value(wall, smaller), accommodates(wall_design, deflection_allowance_wall).
r1: violation <= compartment_wall_mid_span(wall), not obligation_met.
