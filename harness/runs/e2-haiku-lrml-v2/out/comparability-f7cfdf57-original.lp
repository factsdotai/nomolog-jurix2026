% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 81271c078e43ad0f
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway).
obligation_met_r1(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway), not obligation_met_r1(LevelChangeFeature).
obligation_met_r2(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), lighting(LevelChangeFeature), surface_brightness_contrast(LevelChangeFeature).
obligation_met_r2(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), warning_sign(LevelChangeFeature).
r2: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway), not obligation_met_r2(LevelChangeFeature).
