% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fd35e10d688ba4e0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- floor_drain(F), sink(s), connected(s, F), drain_distance(s, F, d).
obligation_met(F) :- connected_sink_count(F, FConnectedSinkCount), FConnectedSinkCount <= 2, d <= 3000.
r1: violation <= floor_drain(F), sink(s), connected(s, F), drain_distance(s, F, d), not obligation_met(F).
