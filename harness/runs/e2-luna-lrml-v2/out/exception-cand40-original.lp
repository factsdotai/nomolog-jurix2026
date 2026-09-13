% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fffc9f0818f3fecc
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- major_renovation_residential(Building), parking_space(parking_space, Building).
obligation_met :- cable_route(parking_space).
r1: violation <= major_renovation_residential(Building), parking_space(parking_space, Building), not obligation_met.
r2: exempt_r2 <= major_renovation_residential(Building), parking_space(parking_space, Building), install_cost_fraction(Building, BuildingInstallCostFraction), BuildingInstallCostFraction > 0.07.
#conflict violation, exempt_r2.
r2 > r1.
