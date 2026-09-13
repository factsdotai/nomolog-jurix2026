% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 72a0fe2d6cea5f34
applies :- structural_element(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), comply_with(StructuralElement, appendix_b_table_b3).
obligation_met(StructuralElement) :- structural_element(StructuralElement), supports_only_roof(StructuralElement), not neg_scope_1.
r1: violation <= structural_element(StructuralElement), not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
