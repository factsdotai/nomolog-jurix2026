% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e245abf0a000f713
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height(ProtrudingElement, ProtrudingElementFreeHeight), ProtrudingElementFreeHeight >= 2200.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met(ProtrudingElement).
neg_scope_1 :- protruding_element(ProtrudingElement), flush_facade_element(ProtrudingElement).
