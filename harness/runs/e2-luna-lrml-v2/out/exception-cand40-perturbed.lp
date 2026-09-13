% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 1a9a9f33f7362fc2
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant install_cost_fraction_residential_buildi
applies :- residential_building(ResidentialBuilding), major_renovation_residential(ResidentialBuilding), parking_space(ParkingSpace), parking_space(ParkingSpace, ResidentialBuilding).
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), cable_route_installed(ParkingSpace).
r1: violation <= residential_building(ResidentialBuilding), major_renovation_residential(ResidentialBuilding), parking_space(ParkingSpace), parking_space(ParkingSpace, ResidentialBuilding), not obligation_met(ParkingSpace).
r2: exempt_r2 <= residential_building(ResidentialBuilding), major_renovation_residential(ResidentialBuilding), install_cost_fraction_residential_buildi > 0.07.
#conflict violation, exempt_r2.
r2 > r1.
