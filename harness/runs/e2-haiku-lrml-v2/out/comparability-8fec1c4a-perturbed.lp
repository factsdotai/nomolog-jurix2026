% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5f97e7763f02b196
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- membrane(Membrane), penetration(penetration, Membrane).
obligation_met :- robust_seal(penetration).
r1: violation <= membrane(Membrane), penetration(penetration, Membrane), not obligation_met.
