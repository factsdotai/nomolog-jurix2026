% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 74622a1a47e04291
% term-flattened: nested call -> constant ladder_length_ladder
applies :- ladder(Ladder).
obligation_met(Ladder) :- ladder(Ladder), special_safety_features(Ladder).
obligation_met(Ladder) :- ladder(Ladder), ladder_length_ladder <= 6000.
r1: violation <= ladder(Ladder), not obligation_met(Ladder).
