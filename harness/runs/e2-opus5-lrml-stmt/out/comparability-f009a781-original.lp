% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2069e0bc61ee9063
applies :- landing(Landing).
obligation_met(Landing) :- landing(Landing), safe(Landing), sufficiently_spacious(Landing), suitable_for_purpose(Landing).
r1: violation <= landing(Landing), not obligation_met(Landing).
