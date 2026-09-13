% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 857a61d904aa36c0
applies :- membrane(Membrane), penetration(Penetration), part_of(Penetration, Membrane).
obligation_met(Penetration) :- penetration(Penetration), robust_durable_seal(Penetration).
r1: violation <= membrane(Membrane), penetration(Penetration), part_of(Penetration, Membrane), not obligation_met(Penetration).
