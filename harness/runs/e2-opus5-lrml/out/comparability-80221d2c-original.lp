% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8616be3e8b403fb0
applies :- floor_drain(FloorDrain), connected(DrainageWell, FloorDrain).
obligation_met(DrainageWell, FloorDrain) :- floor_drain(FloorDrain), connected_well_count(FloorDrain, FloorDrainConnectedWellCount), FloorDrainConnectedWellCount <= 2, distance_to_floor_drain(DrainageWell, DrainageWellDistanceToFloorDrain), DrainageWellDistanceToFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), connected(DrainageWell, FloorDrain), not obligation_met(DrainageWell, FloorDrain).
