% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 78ac81aeb3ba7593
applies :- building(Building), major_renovation(Building).
obligation_met(Building) :- building(Building), alt_systems_feasibility_considered(Building).
r1: violation <= building(Building), major_renovation(Building), not obligation_met(Building).
