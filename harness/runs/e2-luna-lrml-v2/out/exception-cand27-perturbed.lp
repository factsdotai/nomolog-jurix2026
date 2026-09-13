% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c7cf48d21607f8d8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- structural_element(StructuralElement), not neg_scope_1.
applies :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
applies :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), fire_resistance(StructuralElement, StructuralElementFireResistance), as_per(StructuralElementFireResistance, appendix_b_table_b3).
r1: violation <= structural_element(StructuralElement), not neg_scope_1, not obligation_met(StructuralElement).
r2: violation <= structural_element(StructuralElement), roof_functions_as_floor(StructuralElement), not obligation_met(StructuralElement).
r3: violation <= structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement), not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement).
