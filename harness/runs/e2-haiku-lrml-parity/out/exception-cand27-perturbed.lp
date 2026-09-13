% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a27f671753173225
applies :- structural_element(StructuralElement), not neg_scope_1.
obligation_met(StructuralElement) :- structural_element(StructuralElement), fire_resistance(StructuralElement, StructuralElementFireResistance), as_per(StructuralElementFireResistance, table_b3).
r1: violation <= structural_element(StructuralElement), not neg_scope_1, not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement), roof_functions_as_floor(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
