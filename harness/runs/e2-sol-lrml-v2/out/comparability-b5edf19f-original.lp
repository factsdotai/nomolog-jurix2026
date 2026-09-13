% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c76eda3a8b575624
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(b), partitioning_necessary(b).
obligation_met :- partitioned_into_compartments(b).
r1: violation <= building(b), partitioning_necessary(b), not obligation_met.
