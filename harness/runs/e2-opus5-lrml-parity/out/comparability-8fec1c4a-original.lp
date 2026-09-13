% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e961e73e8ab8d669
applies :- membrane(Membrane), penetration(Penetration), penetrates(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), penetrates(Penetration, Membrane), not obligation_met(Penetration).
