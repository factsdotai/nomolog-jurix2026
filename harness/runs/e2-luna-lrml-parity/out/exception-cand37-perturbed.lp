% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0b54931c6f809ebe
% term-flattened: nested call -> constant deflection_allowance_compartment_wall
% term-flattened: nested call -> constant justified_deflection_value_compartment_w
% term-flattened: nested call -> constant deflection_allowance_compartment_wall
% term-flattened: nested call -> constant deflection_allowance_compartment_wall
applies :- compartment_wall_mid_span(compartment_wall).
obligation_met :- deflection_allowance_compartment_wall = 40, accommodate(compartment_wall, deflection_allowance_compartment_wall).
obligation_met :- justified_deflection_value_compartment_w < 40, accommodate(compartment_wall, deflection_allowance_compartment_wall).
r1: violation <= compartment_wall_mid_span(compartment_wall), not obligation_met.
