% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d23ca941ebe569c5
applies :- floor_drain(FloorDrain).
obligation_met(FloorDrain) :- floor_drain(FloorDrain), connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2, drainage_well_distance(FloorDrain, FloorDrainDrainageWellDistance), FloorDrainDrainageWellDistance <= 3000.
r1: violation <= floor_drain(FloorDrain), not obligation_met(FloorDrain).
