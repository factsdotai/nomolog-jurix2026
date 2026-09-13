% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a6fafab0370bd4e4
applies :- building(Building).
obligation_met(Building) :- building(Building), not neg_scope_1.
obligation_met(Building) :- building(Building), partitioned_into_compartments(Building).
obligation_met(Building) :- building(Building), sprinkler(Sprinkler).
r1: violation <= building(Building), not obligation_met(Building).
neg_scope_1 :- building(Building), partitioning_necessary(Building).
