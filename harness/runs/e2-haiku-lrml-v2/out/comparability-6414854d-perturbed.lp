% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2fcc8ade397540e0
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- ladder(Ladder).
obligation_met :- special_safety_features(SpecialSafetyFeatures).
r1: violation <= ladder(Ladder), not obligation_met.
r2: exempt_r2 <= ladder(Ladder), length(Ladder, LadderLength), LadderLength <= 6000.
#conflict violation, exempt_r2.
r2 > r1.
