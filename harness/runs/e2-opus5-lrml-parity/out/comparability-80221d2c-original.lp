% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 00236354e7f999f2
applies :- floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(DrainageWell, FloorDrain) :- floor_drain(FloorDrain), connected_well_count(FloorDrain, FloorDrainConnectedWellCount), FloorDrainConnectedWellCount <= 2, drainage_well(DrainageWell), distance_to_floor_drain(DrainageWell, DrainageWellDistanceToFloorDrain), DrainageWellDistanceToFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(DrainageWell, FloorDrain).
