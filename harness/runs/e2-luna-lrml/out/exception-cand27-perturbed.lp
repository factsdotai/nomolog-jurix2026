% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a7c4dae4138b5ed3
applies :- structural_element(Structure), not neg_scope_1.
applies :- structural_element(Structure), roof_functions_as_floor(Structure).
applies :- structural_element(Structure), essential_for_fire_wall_stability(Structure).
obligation_met(Structure) :- fire_resistance(Structure, StructureFireResistance), comply_with(StructureFireResistance, appendix_b, table_b3).
r1: violation <= structural_element(Structure), not neg_scope_1, not obligation_met(Structure).
r2: violation <= structural_element(Structure), roof_functions_as_floor(Structure), not obligation_met(Structure).
r3: violation <= structural_element(Structure), essential_for_fire_wall_stability(Structure), not obligation_met(Structure).
neg_scope_1 :- supports_only_roof(Structure).
