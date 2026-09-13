% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: dc0ae40fac049de9
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- element(Element), protruding_element(Element).
obligation_met(Element) :- element(Element), free_height(Element, ElementFreeHeight), ElementFreeHeight >= 2200.
r1: violation <= element(Element), protruding_element(Element), not obligation_met(Element).
r2: exempt_r2 <= element(Element), protruding_element(Element), area_protected(Element).
#conflict violation, exempt_r2.
r2 > r1.
