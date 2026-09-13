% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a3375b30e57b1fb9
applies :- floor_drain(F), sink(s), connected(s, F), drain_distance(s, F, d).
obligation_met(F) :- connected_sink_count(F, FConnectedSinkCount), FConnectedSinkCount <= 2, d <= 3000.
r1: violation <= floor_drain(F), sink(s), connected(s, F), drain_distance(s, F, d), not obligation_met(F).
