% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 548cb67f1db929e7
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- floor_drain(FloorDrain).
applies :- floor_drain(FloorDrain), sink(sink), connected(sink, FloorDrain), drain_distance(sink, FloorDrain, distance).
obligation_met_s1(FloorDrain) :- connected_sink_count(FloorDrain, FloorDrainConnectedSinkCount), FloorDrainConnectedSinkCount <= 2.
r1: violation <= floor_drain(FloorDrain), not obligation_met_s1(FloorDrain).
obligation_met_s2 :- distance <= 3000.
r2: violation <= floor_drain(FloorDrain), sink(sink), connected(sink, FloorDrain), drain_distance(sink, FloorDrain, distance), not obligation_met_s2.
