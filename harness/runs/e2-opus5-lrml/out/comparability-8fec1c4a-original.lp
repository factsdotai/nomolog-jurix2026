% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 65290b6159f332d8
applies :- membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_durable_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), penetration(Penetration, Membrane), not obligation_met(Penetration).
