% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cca0749469343b5f
applies :- structural_element(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), required_fire_resistance(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), not neg_scope_1.
obligation_met(StructuralElement) :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
r1: violation <= structural_element(StructuralElement), not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement).
