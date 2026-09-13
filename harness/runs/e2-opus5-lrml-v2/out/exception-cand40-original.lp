% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6e6cf259ae9f68d3
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), part_of(ParkingSpace, Building).
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), cable_route(ParkingSpace, ParkingSpaceCableRoute).
r1: violation <= building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), part_of(ParkingSpace, Building), not obligation_met(ParkingSpace).
r2: exempt_r2 <= building(Building), major_renovation_residential(Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction > 0.07.
#conflict violation, exempt_r2.
r2 > r1.
