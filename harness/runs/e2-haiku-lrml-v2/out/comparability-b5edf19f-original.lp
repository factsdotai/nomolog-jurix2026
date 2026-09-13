% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ab82c8107e1513c3
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building).
obligation_met(Building) :- building(Building), partitioned_into_compartments(Building).
r1: violation <= building(Building), not obligation_met(Building).
r2: exempt_r2 <= building(Building), not neg_scope_1.
#conflict violation, exempt_r2.
r2 > r1.
neg_scope_1 :- building(Building), partitioning_necessary(Building).
