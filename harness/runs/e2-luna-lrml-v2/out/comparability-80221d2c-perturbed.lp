% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a7a9ff5e6b0bee54
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2, distance_from_floor_drain(DrainageWell, DrainageWellDistanceFromFloorDrain), DrainageWellDistanceFromFloorDrain <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
