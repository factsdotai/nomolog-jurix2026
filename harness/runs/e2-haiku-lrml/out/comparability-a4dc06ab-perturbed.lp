% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1c1f3b7afeebbd4c
% term-flattened: nested call -> constant free_height_protruding_element_2_2_m
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met :- free_height_protruding_element_2_2_m >= 0.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met.
neg_scope_1 :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
