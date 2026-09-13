% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 45a35f877bfd06d5
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), not obligation_met(LevelChangeFeature).
