% Ramps/steps/thresholds/level differences in passageways clearly indicated
% (lighting, brightness contrast, or warning signs -- means folded into leaf).
applies :- passageway(P).
r1: violation <= passageway(P), level_change_feature(F, P), not clearly_indicated(F).
