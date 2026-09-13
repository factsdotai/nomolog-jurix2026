% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c1bf158889e6283e
applies :- level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), part_of(LevelChangeFeature, Passageway), not obligation_met(LevelChangeFeature).
