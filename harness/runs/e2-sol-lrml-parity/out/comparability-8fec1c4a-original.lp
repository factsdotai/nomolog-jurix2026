% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5f97e7763f02b196
applies :- membrane(Membrane), penetration(penetration, Membrane).
obligation_met :- robust_seal(penetration).
r1: violation <= membrane(Membrane), penetration(penetration, Membrane), not obligation_met.
