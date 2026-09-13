% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 00236354e7f999f2
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(DrainageWell, FloorDrain) :- floor_drain(FloorDrain), connected_well_count(FloorDrain, FloorDrainConnectedWellCount), FloorDrainConnectedWellCount <= 2, drainage_well(DrainageWell), distance_to_floor_drain(DrainageWell, DrainageWellDistanceToFloorDrain), DrainageWellDistanceToFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(DrainageWell, FloorDrain).
