% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 78ac81aeb3ba7593
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), major_renovation(Building).
obligation_met(Building) :- building(Building), alt_systems_feasibility_considered(Building).
r1: violation <= building(Building), major_renovation(Building), not obligation_met(Building).
