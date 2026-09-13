% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 10b539b64a7dc2c3
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature), level_change_feature(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), level_change_feature(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
