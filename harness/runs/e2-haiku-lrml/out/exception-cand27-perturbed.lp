% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ac8c025b96f067a0
applies :- structural_element(StructuralElement), not neg_scope_1.
obligation_met(StructuralElement) :- structural_element(StructuralElement), comply_with(StructuralElement, table_b3).
r1: violation <= structural_element(StructuralElement), not neg_scope_1, not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
