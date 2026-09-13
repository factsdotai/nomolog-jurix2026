% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 664dcfdfb4a83626
% n_statements: 2  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant drain_distance_drainage_well_floor_drain
applies :- drainage_well(DrainageWell), connected(DrainageWell, FloorDrain).
obligation_met_r1(FloorDrain) :- connected_drainage_wells(FloorDrain, FloorDrainConnectedDrainageWells), FloorDrainConnectedDrainageWells <= 2.
r1: violation <= drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met_r1(FloorDrain).
obligation_met_r2 :- drain_distance_drainage_well_floor_drain <= 3000.
r2: violation <= drainage_well(DrainageWell), connected(DrainageWell, FloorDrain), not obligation_met_r2.
