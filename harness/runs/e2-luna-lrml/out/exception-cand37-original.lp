% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 022f3f430668ca94
applies :- compartment_wall_mid_span(wall).
obligation_met :- deflection_allowance(wall, 40), accommodate(wall, deflection_allowance).
obligation_met :- justified_deflection_value(wall, deflection_allowance), accommodate(wall, deflection_allowance).
r1: violation <= compartment_wall_mid_span(wall), not obligation_met.
