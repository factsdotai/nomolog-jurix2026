% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e159ffe34d3d8bdf
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane), not obligation_met(Penetration).
