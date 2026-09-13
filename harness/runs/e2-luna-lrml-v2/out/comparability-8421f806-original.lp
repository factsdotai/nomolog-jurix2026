% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a325247c4a8c2e4c
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- approach(a), gradient(a, g), g >= 0.05.
applies :- approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05.
obligation_met_s1 :- ramped_access(a).
r1: violation <= approach(a), gradient(a, g), g >= 0.05, not obligation_met_s1.
obligation_met_s2 :- ramped_access(p).
r2: violation <= approach(a), gradient_part(a, p), gradient(p, g), g >= 0.05, not obligation_met_s2.
