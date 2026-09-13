% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f4ddcd6ea03997c9
applies :- membrane(m1), penetration(p1, m1).
obligation_met :- robust_seal(p1).
r1: violation <= membrane(m1), penetration(p1, m1), not obligation_met.
