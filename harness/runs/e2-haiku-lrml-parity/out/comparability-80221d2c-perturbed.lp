% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2fd792335d2f31d6
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met(FloorDrain) :- connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2, drain_distance_drainage_well_floor_drain <= 3000.
r1: violation <= drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met(FloorDrain).
