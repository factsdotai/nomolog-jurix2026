% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 489fbbd7a15993b3
applies :- floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(DrainageWell, FloorDrain) :- floor_drain(FloorDrain), connected_well_count(FloorDrain, FloorDrainConnectedWellCount), FloorDrainConnectedWellCount <= 2, drainage_well(DrainageWell), distance_to_floor_drain(DrainageWell, DrainageWellDistanceToFloorDrain), DrainageWellDistanceToFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(DrainageWell, FloorDrain).
