% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ead6e0a0ba6d989e
applies :- membrane(m), penetration(p, m).
obligation_met :- robust_seal(p).
r1: violation <= membrane(m), penetration(p, m), not obligation_met.
