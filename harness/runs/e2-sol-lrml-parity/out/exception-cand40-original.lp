% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7c4bd2506e589ac6
applies :- building(Building), major_renovation_residential(Building), install_cost_fraction(Building, cost_fraction).
obligation_met(Building) :- building(Building), cost_fraction > 0.07.
obligation_met(Building) :- building(Building), parking_space(parking_space, Building), cable_route(parking_space).
r1: violation <= building(Building), major_renovation_residential(Building), install_cost_fraction(Building, cost_fraction), not obligation_met(Building).
