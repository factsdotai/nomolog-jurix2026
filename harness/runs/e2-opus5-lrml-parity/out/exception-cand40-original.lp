% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5660b503aeb94523
applies :- building(Building), major_renovation_residential(Building), parking_space(ParkingSpace).
obligation_met(Building, ParkingSpace) :- building(Building), parking_space(ParkingSpace), cable_route(ParkingSpace).
obligation_met(Building, ParkingSpace) :- parking_space(ParkingSpace), building(Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction > 0.07.
r1: violation <= building(Building), major_renovation_residential(Building), parking_space(ParkingSpace), not obligation_met(Building, ParkingSpace).
