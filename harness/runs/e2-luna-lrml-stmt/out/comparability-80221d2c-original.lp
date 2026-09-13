% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c008b8268d06e823
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2, connected_drainage_well(ConnectedDrainageWell), distance_from_floor_drain(ConnectedDrainageWell, ConnectedDrainageWellDistanceFromFloorDrain), ConnectedDrainageWellDistanceFromFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
