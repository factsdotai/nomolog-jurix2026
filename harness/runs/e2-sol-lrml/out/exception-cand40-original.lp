% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3c458de5849d7a70
applies :- major_renovation_residential(building), parking_space(parking_space, building), install_cost_fraction(building, cost_fraction), cost_fraction <= 0.07.
obligation_met :- cable_route(parking_space).
r1: violation <= major_renovation_residential(building), parking_space(parking_space, building), install_cost_fraction(building, cost_fraction), cost_fraction <= 0.07, not obligation_met.
