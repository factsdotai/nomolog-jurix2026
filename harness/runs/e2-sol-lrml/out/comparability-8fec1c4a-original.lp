% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 30735ffbaaa1385c
applies :- membrane(m), penetration(p, m).
obligation_met :- robust_seal(p).
r1: violation <= membrane(m), penetration(p, m), not obligation_met.
