% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 249d5c474b075a68
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), partitioning_necessary(Building).
obligation_met(Building) :- building(Building), partitioned_into_compartments(Building).
r1: violation <= building(Building), partitioning_necessary(Building), not obligation_met(Building).
