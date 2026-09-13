% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 728fb23a1851f1c4
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature), part_of(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), part_of(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
