% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0a6549fb240487d9
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- element(Element), protruding_element(Element), free_height(Element, height).
obligation_met :- height >= 2200.
r1: violation <= element(Element), protruding_element(Element), free_height(Element, height), not obligation_met.
r2: exempt_r2 <= element(Element), protruding_element(Element), area_protected(Element).
#conflict violation, exempt_r2.
r2 > r1.
