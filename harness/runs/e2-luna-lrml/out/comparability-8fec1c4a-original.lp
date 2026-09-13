% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f71ea16d1c3b2f80
applies :- penetration(Penetration).
obligation_met(Penetration) :- penetration(Penetration), robust_seal(Penetration).
r1: violation <= penetration(Penetration), not obligation_met(Penetration).
