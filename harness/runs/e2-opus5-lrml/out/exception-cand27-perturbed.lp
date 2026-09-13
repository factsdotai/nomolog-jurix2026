% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0c94b38329f0425f
applies :- structural_element(StructuralElement), not neg_scope_1.
applies :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
applies :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
obligation_met(StructuralElement) :- structural_element(StructuralElement), required_fire_resistance(StructuralElement, StructuralElementRequiredFireResistance), as_per(StructuralElementRequiredFireResistance, table_b3).
r1: violation <= structural_element(StructuralElement), not neg_scope_1, not obligation_met(StructuralElement).
r2: violation <= structural_element(StructuralElement), roof_functions_as_floor(StructuralElement), not obligation_met(StructuralElement).
r3: violation <= structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement), not obligation_met(StructuralElement).
neg_scope_1 :- structural_element(StructuralElement), supports_only_roof(StructuralElement).
