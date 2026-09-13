% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 52f5527fdd8dd8aa
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- ladder(Ladder).
obligation_met(Ladder) :- ladder(Ladder), special_safety_features(Ladder, LadderSpecialSafetyFeatures).
r1: violation <= ladder(Ladder), not obligation_met(Ladder).
r2: exempt_r2 <= ladder(Ladder), length(Ladder, LadderLength), LadderLength <= 6000.
#conflict violation, exempt_r2.
r2 > r1.
