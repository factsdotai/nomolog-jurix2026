% Ladder <= 6m (6000mm): special safety features not necessary. Contrapositive
% reading (features required above 6m) noted as an interpretive step.
applies :- ladder(L).
r1: violation <= ladder(L), ladder_length(L, LEN), LEN > 6000, not special_safety_features(L).
