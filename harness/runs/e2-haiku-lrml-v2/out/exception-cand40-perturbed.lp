% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: af7620b82c1632e1
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant install_cost_fraction_parking_space_0_07
applies :- parking_space(ParkingSpace), major_renovation_residential(ParkingSpace).
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), cable_route(ParkingSpace).
r1: violation <= parking_space(ParkingSpace), major_renovation_residential(ParkingSpace), not obligation_met(ParkingSpace).
r2: exempt_r2 <= parking_space(ParkingSpace), major_renovation_residential(ParkingSpace), install_cost_fraction_parking_space_0_07 > 0.07.
#conflict violation, exempt_r2.
r2 > r1.
