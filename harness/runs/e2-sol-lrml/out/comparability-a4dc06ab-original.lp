% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 76b61f969e23b87a
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height(ProtrudingElement, ProtrudingElementFreeHeight), ProtrudingElementFreeHeight >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met(ProtrudingElement).
neg_scope_1 :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
