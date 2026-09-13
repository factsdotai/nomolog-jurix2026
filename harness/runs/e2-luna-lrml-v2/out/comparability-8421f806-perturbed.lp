% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 08334437f52542f4
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- approach(approach), gradient(approach, gradient), gradient >= 0.05.
applies :- approach(approach), gradient_part(approach, part), gradient(part, gradient), gradient >= 0.05.
obligation_met :- ramped_access(approach).
r1: violation <= approach(approach), gradient(approach, gradient), gradient >= 0.05, not obligation_met.
r2: violation <= approach(approach), gradient_part(approach, part), gradient(part, gradient), gradient >= 0.05, not obligation_met.
