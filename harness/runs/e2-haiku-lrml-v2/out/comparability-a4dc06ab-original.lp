% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fa75a1a1ea67b116
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant free_height_protruding_element
applies :- protruding_element(ProtrudingElement), not neg_scope_1.
obligation_met :- free_height_protruding_element >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not neg_scope_1, not obligation_met.
r2: exempt_r2 <= protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
#conflict violation, exempt_r2.
r2 > r1.
neg_scope_1 :- protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
