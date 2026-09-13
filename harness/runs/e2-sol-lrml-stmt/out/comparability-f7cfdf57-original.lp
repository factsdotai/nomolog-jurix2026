% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5a7129e2af82c8d5
applies :- passageway(Passageway), level_change_feature(level_change_feature, Passageway).
obligation_met :- clearly_indicated(level_change_feature).
r1: violation <= passageway(Passageway), level_change_feature(level_change_feature, Passageway), not obligation_met.
