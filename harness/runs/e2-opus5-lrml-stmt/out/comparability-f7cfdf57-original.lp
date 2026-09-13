% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d5ed52ad9969647a
applies :- level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
