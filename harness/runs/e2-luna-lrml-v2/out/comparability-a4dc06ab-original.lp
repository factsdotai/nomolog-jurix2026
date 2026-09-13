% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f0d09aa7f5462936
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- protruding_element(ProtrudingElement).
obligation_met(ProtrudingElement) :- protruding_element(ProtrudingElement), free_height(ProtrudingElement, ProtrudingElementFreeHeight), ProtrudingElementFreeHeight >= 2200.
r1: violation <= protruding_element(ProtrudingElement), not obligation_met(ProtrudingElement).
r2: exempt_r2 <= protruding_element(ProtrudingElement), area_protected(ProtrudingElement).
#conflict violation, exempt_r2.
r2 > r1.
