% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 249d5c474b075a68
applies :- building(Building), partitioning_necessary(Building).
obligation_met(Building) :- building(Building), partitioned_into_compartments(Building).
r1: violation <= building(Building), partitioning_necessary(Building), not obligation_met(Building).
