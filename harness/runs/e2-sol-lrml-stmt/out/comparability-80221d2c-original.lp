% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4e69abb449463ded
% term-flattened: nested call -> constant drain_distance_sink_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_sink_count(FloorDrain, FloorDrainConnectedSinkCount), FloorDrainConnectedSinkCount <= 2, sink(Sink), connected(Sink, FloorDrain), drain_distance_sink_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
