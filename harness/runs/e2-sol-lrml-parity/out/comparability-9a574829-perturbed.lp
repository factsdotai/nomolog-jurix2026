% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1c703443fc68792e
applies :- building(Building), vent_system(VentSystem).
obligation_met(Building) :- building(Building), whole_building_rate_met(Building).
r1: violation <= building(Building), vent_system(VentSystem), not obligation_met(Building).
