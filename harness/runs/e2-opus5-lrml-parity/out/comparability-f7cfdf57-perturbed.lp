% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 10b539b64a7dc2c3
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature), level_change_feature(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), level_change_feature(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
