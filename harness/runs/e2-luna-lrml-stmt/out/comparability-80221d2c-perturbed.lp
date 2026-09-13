% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b9ee4e316149e4f5
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2, connected(drainage_well, FloorDrain), drain_distance_drainage_well_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
