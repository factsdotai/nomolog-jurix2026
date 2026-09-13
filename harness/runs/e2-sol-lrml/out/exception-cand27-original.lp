% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1da69bd44cd08b75
% term-flattened: nested call -> constant required_fire_resistance_element
applies :- structural_element(element), not neg_scope_1.
applies :- structural_element(element), roof_functions_as_floor(element).
applies :- structural_element(element), essential_for_fire_wall_stability(element).
obligation_met :- as_per(required_fire_resistance_element, appendix_b_table_b3).
r1: violation <= structural_element(element), not neg_scope_1, not obligation_met.
r2: violation <= structural_element(element), roof_functions_as_floor(element), not obligation_met.
r3: violation <= structural_element(element), essential_for_fire_wall_stability(element), not obligation_met.
neg_scope_1 :- supports_only_roof(element).
