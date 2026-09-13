% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 276f79c19234461b
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_well_count(FloorDrain, FloorDrainConnectedWellCount), FloorDrainConnectedWellCount <= 2, drain_distance_drainage_well_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(FloorDrain).
