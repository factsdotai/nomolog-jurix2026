% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d9ba6ea70f47f434
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(building), partitioning_necessary(building).
obligation_met :- partitioned_into_compartments(building).
r1: violation <= building(building), partitioning_necessary(building), not obligation_met.
