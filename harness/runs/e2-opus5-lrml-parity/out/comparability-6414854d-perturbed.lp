% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 30cf7e24072be599
applies :- ladder(Ladder).
obligation_met(Ladder) :- ladder(Ladder), special_safety_features(Ladder).
obligation_met(Ladder) :- ladder(Ladder), length(Ladder, LadderLength), LadderLength <= 6000.
r1: violation <= ladder(Ladder), not obligation_met(Ladder).
