% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 46b4260b2919b745
applies :- major_renovation_residential(building), install_cost_fraction(building, cost_fraction), cost_fraction <= 0.07, parking_space(parking_space, building).
obligation_met :- cable_route(parking_space).
r1: violation <= major_renovation_residential(building), install_cost_fraction(building, cost_fraction), cost_fraction <= 0.07, parking_space(parking_space, building), not obligation_met.
