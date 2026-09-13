% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b68bf66c2e1933c3
applies :- element(Element), structural_element(Element), not neg_scope_1.
applies :- element(Element), structural_element(Element), roof_functions_as_floor(Element).
applies :- element(Element), structural_element(Element), essential_for_fire_wall_stability(Element).
obligation_met(Element) :- element(Element), fire_resistance(Element, ElementFireResistance), as_per(ElementFireResistance, appendix_b_table_b3).
r1: violation <= element(Element), structural_element(Element), not neg_scope_1, not obligation_met(Element).
r2: violation <= element(Element), structural_element(Element), roof_functions_as_floor(Element), not obligation_met(Element).
r3: violation <= element(Element), structural_element(Element), essential_for_fire_wall_stability(Element), not obligation_met(Element).
neg_scope_1 :- element(Element), supports_only_roof(Element).
