% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7b443542c2a0f6e3
applies :- building(Building), major_renovation_residential(Building), parking_space(ParkingSpace).
obligation_met(Building) :- building(Building), cable_route_installed_all_parking_spaces(Building).
obligation_met(Building) :- building(Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction > 0.07.
r1: violation <= building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), not obligation_met(Building).
