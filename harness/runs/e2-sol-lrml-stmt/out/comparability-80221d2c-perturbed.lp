% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 04dca7c15548af60
% term-flattened: nested call -> constant connected_sink_floor_drain
% term-flattened: nested call -> constant drain_distance_sink_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- connected_sink_floor_drain <= 2, floor_drain(FloorDrain), connected(sink, FloorDrain), drain_distance_sink_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
