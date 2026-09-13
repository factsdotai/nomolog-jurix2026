% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 45a35f877bfd06d5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), not obligation_met(LevelChangeFeature).
