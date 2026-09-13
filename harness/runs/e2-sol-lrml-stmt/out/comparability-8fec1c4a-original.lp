% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ab1b1eefa3b25e7d
applies :- membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane), not obligation_met(Penetration).
