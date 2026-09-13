% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9c1e9e1510f26521
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), vent_system(VentSystem).
obligation_met(Building) :- building(Building), whole_building_rate_met(Building).
r1: violation <= building(Building), vent_system(VentSystem), not obligation_met(Building).
