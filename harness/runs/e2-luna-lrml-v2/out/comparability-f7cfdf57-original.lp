% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 78ee3b700f7181f8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- passageway(Passageway), level_change_feature(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature), lighting(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature), surface_brightness_contrast(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature), warning_sign(LevelChangeFeature).
r1: violation <= passageway(Passageway), level_change_feature(LevelChangeFeature), not obligation_met(LevelChangeFeature).
