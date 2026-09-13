% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ef5af85dc5cdc4c3
applies :- structural_element(StructuralElement).
applies :- partition(Partition).
obligation_met :- structural_element(StructuralElement), required_fire_resistance(StructuralElement, StructuralElementRequiredFireResistance), as_per(StructuralElementRequiredFireResistance, table_b3).
obligation_met :- structural_element(StructuralElement), supports_only_roof(StructuralElement), not neg_scope_1, not neg_scope_2.
r1: violation <= structural_element(StructuralElement), not obligation_met.
r2: violation <= partition(Partition), not obligation_met.
neg_scope_1 :- structural_element(StructuralElement), roof_functions_as_floor(StructuralElement).
neg_scope_2 :- structural_element(StructuralElement), essential_for_fire_wall_stability(StructuralElement).
