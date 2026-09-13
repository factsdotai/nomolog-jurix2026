% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: be3cf23d56f62477
applies :- landing(Landing).
obligation_met(Landing) :- landing(Landing), safe(Landing), sufficiently_spacious(Landing), suitable_for_purpose(Landing).
r1: violation <= landing(Landing), not obligation_met(Landing).
