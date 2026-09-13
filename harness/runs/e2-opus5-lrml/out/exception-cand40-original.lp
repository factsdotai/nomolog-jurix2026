% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 413cfc372a176e6f
applies :- building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), part_of(ParkingSpace, Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction <= 0.07.
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), cable_route(ParkingSpace).
r1: violation <= building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), part_of(ParkingSpace, Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction <= 0.07, not obligation_met(ParkingSpace).
