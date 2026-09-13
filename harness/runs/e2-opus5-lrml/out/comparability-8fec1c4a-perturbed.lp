% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: deb5ad6c648157d5
applies :- membrane(Membrane), penetration(Penetration), penetration_of(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_durable_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), penetration_of(Penetration, Membrane), not obligation_met(Penetration).
