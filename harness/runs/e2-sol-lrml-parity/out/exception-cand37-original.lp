% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d377157a9f869acf
applies :- compartment_wall_mid_span(wall).
obligation_met :- deflection_allowance(wall, allowance), allowance >= 40.
obligation_met :- justified_deflection_value(wall, justified_value), justified_value < 40, deflection_allowance(wall, allowance), allowance >= justified_value.
r1: violation <= compartment_wall_mid_span(wall), not obligation_met.
