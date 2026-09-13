% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2a48b25abf62922f
applies :- building(Building).
obligation_met(Building) :- building(Building), whole_building_rate_met(Building).
r1: violation <= building(Building), not obligation_met(Building).
