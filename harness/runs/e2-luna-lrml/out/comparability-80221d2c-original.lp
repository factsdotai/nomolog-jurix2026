% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c91038361385570c
% term-flattened: nested call -> constant number_of_connected
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met :- number_of_connected <= 2, drainage_well(DrainageWell), drain_distance_drainage_well_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met.
