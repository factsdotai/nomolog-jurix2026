% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cbb4b5b8e6c5ce3c
applies :- level_change_feature(f, p), passageway(p).
obligation_met :- clearly_indicated(f).
r1: violation <= level_change_feature(f, p), passageway(p), not obligation_met.
