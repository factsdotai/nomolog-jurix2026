% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b2392a8cfce7b9d0
applies :- membrane(Membrane), penetration(penetration, Membrane).
obligation_met :- robust_seal(penetration).
r1: violation <= membrane(Membrane), penetration(penetration, Membrane), not obligation_met.
