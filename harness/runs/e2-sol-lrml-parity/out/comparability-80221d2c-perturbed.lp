% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d61f3b16ac02369f
% term-flattened: nested call -> constant for_each_sink_connected
% term-flattened: nested call -> constant drain_distance_sink_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met :- for_each_sink_connected <= 2, sink(Sink), not neg_scope_1.
obligation_met :- for_each_sink_connected <= 2, sink(Sink), drain_distance_sink_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met.
neg_scope_1 :- sink(Sink), floor_drain(FloorDrain), connected(Sink, FloorDrain).
