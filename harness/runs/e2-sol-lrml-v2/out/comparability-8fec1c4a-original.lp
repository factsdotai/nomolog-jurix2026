% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 30735ffbaaa1385c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- membrane(m), penetration(p, m).
obligation_met :- robust_seal(p).
r1: violation <= membrane(m), penetration(p, m), not obligation_met.
