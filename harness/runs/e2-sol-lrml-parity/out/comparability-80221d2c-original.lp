% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2478a69aab9d4470
% term-flattened: nested call -> constant drain_distance_sink_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_sink_count(FloorDrain, FloorDrainConnectedSinkCount), FloorDrainConnectedSinkCount <= 2, sink(Sink), not neg_scope_1.
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_sink_count(FloorDrain, FloorDrainConnectedSinkCount), FloorDrainConnectedSinkCount <= 2, sink(Sink), drain_distance_sink_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
neg_scope_1 :- sink(Sink), floor_drain(FloorDrain), connected(Sink, FloorDrain).
