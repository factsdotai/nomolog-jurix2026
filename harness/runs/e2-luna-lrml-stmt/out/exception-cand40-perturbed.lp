% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c00ad8da220a39f9
applies :- major_renovation_residential(MajorRenovationResidential), parking_space(ParkingSpace).
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), install_cost_fraction > 0.07.
obligation_met(ParkingSpace) :- parking_space(ParkingSpace), cable_route_installed(ParkingSpace).
r1: violation <= major_renovation_residential(MajorRenovationResidential), parking_space(ParkingSpace), not obligation_met(ParkingSpace).
