% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 747542751b0912c2
applies :- compartment_wall_mid_span(compartment_wall).
obligation_met :- deflection_allowance(compartment_wall, deflection), deflection >= 40.
obligation_met :- justified_deflection_value(compartment_wall, justified_deflection), justified_deflection < 40, deflection_allowance(compartment_wall, deflection), deflection >= justified_deflection.
r1: violation <= compartment_wall_mid_span(compartment_wall), not obligation_met.
