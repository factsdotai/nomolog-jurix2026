% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4c65468c4f5b39dc
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), not neg_scope_1.
applies :- element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), roof_functions_as_floor(ElementOfStructure).
applies :- element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), essential_for_fire_wall_stability(ElementOfStructure).
obligation_met(ElementOfStructure) :- element_of_structure(ElementOfStructure), fire_resistance(ElementOfStructure, ElementOfStructureFireResistance), as_per(ElementOfStructureFireResistance, appendix_b_table_b3).
r1: violation <= element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), not neg_scope_1, not obligation_met(ElementOfStructure).
r2: violation <= element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), roof_functions_as_floor(ElementOfStructure), not obligation_met(ElementOfStructure).
r3: violation <= element_of_structure(ElementOfStructure), structural_element(ElementOfStructure), essential_for_fire_wall_stability(ElementOfStructure), not obligation_met(ElementOfStructure).
neg_scope_1 :- element_of_structure(ElementOfStructure), supports_only_roof(ElementOfStructure).
