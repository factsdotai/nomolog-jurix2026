% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f4ddcd6ea03997c9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- membrane(m1), penetration(p1, m1).
obligation_met :- robust_seal(p1).
r1: violation <= membrane(m1), penetration(p1, m1), not obligation_met.
