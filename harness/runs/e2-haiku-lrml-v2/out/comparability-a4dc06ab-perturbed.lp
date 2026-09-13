% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ce63d96ef135792a
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height(ProtrudingElement, ProtrudingElementFreeHeight), ProtrudingElementFreeHeight >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met(ProtrudingElement).
r2: exempt_r2 <= protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
#conflict violation, exempt_r2.
r2 > r1.
neg_scope_1 :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
