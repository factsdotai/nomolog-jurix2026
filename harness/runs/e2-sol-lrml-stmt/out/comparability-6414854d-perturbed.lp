% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c925a970e00cb936
applies :- ladder(Ladder).
obligation_met(Ladder) :- ladder(Ladder), ladder_length(Ladder, LadderLadderLength), LadderLadderLength <= 6000.
obligation_met(Ladder) :- ladder(Ladder), special_safety_features(Ladder).
r1: violation <= ladder(Ladder), not obligation_met(Ladder).
