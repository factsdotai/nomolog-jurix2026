% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 257aca9e75e6a666
applies :- penetration(Penetration).
obligation_met(Penetration) :- penetration(Penetration), careful_detailing(Penetration), robust_seal(Penetration).
r1: violation <= penetration(Penetration), not obligation_met(Penetration).
