% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8088e77de4dd99b5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05.
obligation_met :- ramped_access(p).
r1: violation <= approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05, not obligation_met.
