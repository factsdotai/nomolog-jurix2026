% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 377c163650b65f92
% term-flattened: nested call -> constant deflection_allowance_w_40_mm
% term-flattened: nested call -> constant deflection_allowance_w_v
% term-flattened: nested call -> constant deflection_allowance_w_v
applies :- compartment_wall_mid_span(w).
obligation_met :- deflection_allowance_w_40_mm = 40, accommodates(w, deflection_allowance_w_v).
obligation_met :- justified_deflection_value(w, v), v < 40, accommodates(w, deflection_allowance_w_v).
r1: violation <= compartment_wall_mid_span(w), not obligation_met.
