% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c1bf158889e6283e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
