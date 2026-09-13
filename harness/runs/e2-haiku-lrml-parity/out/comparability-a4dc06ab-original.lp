% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 02ab8a49c4f2ac8e
% term-flattened: nested call -> constant free_height_protruding_element
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met :- free_height_protruding_element >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met.
neg_scope_1 :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
