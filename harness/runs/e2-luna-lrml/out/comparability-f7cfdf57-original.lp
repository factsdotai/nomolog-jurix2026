% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 423a4f4a2b25be9a
applies :- level_change_feature(LevelChangeFeature), passageway(Passageway).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), passageway(Passageway), not obligation_met(LevelChangeFeature).
