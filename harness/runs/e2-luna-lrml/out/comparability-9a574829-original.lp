% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 13cd23bbbbd72ec4
applies :- building(Building).
obligation_met(Building) :- building(Building), whole_building_ventilation_rate_met(Building).
r1: violation <= building(Building), not obligation_met(Building).
