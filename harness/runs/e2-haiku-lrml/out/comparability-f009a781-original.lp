% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6f9221f49f668cb6
applies :- landing(Landing), indoor(Landing).
applies :- landing(Landing), outdoor(Landing).
obligation_met(Landing) :- landing(Landing), safe(Landing), sufficiently_spacious(Landing), suitable_for_purpose(Landing).
r1: violation <= landing(Landing), indoor(Landing), not obligation_met(Landing).
r2: violation <= landing(Landing), outdoor(Landing), not obligation_met(Landing).
