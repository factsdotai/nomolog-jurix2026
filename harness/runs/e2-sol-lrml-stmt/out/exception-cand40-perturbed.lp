% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 660d358b0c2c447a
applies :- building(Building), major_renovation_residential(Building).
obligation_met(Building) :- building(Building), install_cost_fraction(Building, fraction), fraction > 0.07.
obligation_met(Building) :- building(Building), parking_space(parking_space, Building), cable_route(parking_space).
r1: violation <= building(Building), major_renovation_residential(Building), not obligation_met(Building).
