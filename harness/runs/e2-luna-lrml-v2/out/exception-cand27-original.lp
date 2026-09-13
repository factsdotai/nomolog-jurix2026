% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b3f4f82b19e2076f
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- structural_element(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), fire_resistance(StructuralElement, StructuralElementFireResistance), as_per(StructuralElementFireResistance, appendix_b_table_b3).
r1: violation <= structural_element(StructuralElement), not obligation_met(StructuralElement).
r2: exempt_r2 <= structural_element(StructuralElement), supports_only_roof(StructuralElement), not neg_scope_1.
#conflict violation, exempt_r2.
r2 > r1.
neg_scope_1 :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
