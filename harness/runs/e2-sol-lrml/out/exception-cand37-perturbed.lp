% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2ca62d7283116af7
applies :- compartment_wall_mid_span(compartment_wall).
obligation_met :- deflection_allowance(compartment_wall, deflection_value), deflection_value = 40, accommodates_deflection(compartment_wall, deflection_value).
obligation_met :- deflection_allowance(compartment_wall, deflection_value), justified_deflection_value(compartment_wall, deflection_value), deflection_value < 40, accommodates_deflection(compartment_wall, deflection_value).
r1: violation <= compartment_wall_mid_span(compartment_wall), not obligation_met.
