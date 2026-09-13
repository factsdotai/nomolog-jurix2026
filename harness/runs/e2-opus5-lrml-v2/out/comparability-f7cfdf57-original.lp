% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 728fb23a1851f1c4
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature), part_of(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), part_of(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
