% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4134fe328e6af374
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_drainage_well_count(FloorDrain, FloorDrainConnectedDrainageWellCount), FloorDrainConnectedDrainageWellCount <= 2, drain_distance_drainage_well_floor_drain <= 3000.
r1: violation <= floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(FloorDrain).
