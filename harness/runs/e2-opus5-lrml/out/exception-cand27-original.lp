% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fb6974883d6e2f4d
applies :- structural_element(StructuralElement), not neg_scope_2.
obligation_met(StructuralElement) :- structural_element(StructuralElement), required_fire_resistance(StructuralElement, StructuralElementRequiredFireResistance), as_per(StructuralElementRequiredFireResistance, table_b3).
r1: violation <= structural_element(StructuralElement), not neg_scope_2, not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
neg_scope_2 :- structural_element(StructuralElement), supports_only_roof(StructuralElement), not neg_scope_1.
