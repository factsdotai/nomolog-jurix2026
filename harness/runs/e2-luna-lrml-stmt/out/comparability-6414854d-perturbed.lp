% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 65b157637555fcb0
applies :- ladder(Ladder).
obligation_met(Ladder) :- ladder(Ladder), length(Ladder, LadderLength), LadderLength <= 6000.
obligation_met(Ladder) :- ladder(Ladder), special_safety_features(Ladder).
r1: violation <= ladder(Ladder), not obligation_met(Ladder).
