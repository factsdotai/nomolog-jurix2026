% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d2c619a0c81f9dd5
applies :- major_renovation_residential(MajorRenovationResidential).
obligation_met :- install_cost_fraction > 0.07.
obligation_met :- parking_space(ParkingSpace), cable_route(CableRoute).
r1: violation <= major_renovation_residential(MajorRenovationResidential), not obligation_met.
