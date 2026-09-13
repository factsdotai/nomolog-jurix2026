% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ef1b76391e3134e7
applies :- level_change_feature(LevelChangeFeature).
obligation_met(LevelChangeFeature) :- level_change_feature(LevelChangeFeature), clearly_indicated(LevelChangeFeature).
r1: violation <= level_change_feature(LevelChangeFeature), not obligation_met(LevelChangeFeature).
