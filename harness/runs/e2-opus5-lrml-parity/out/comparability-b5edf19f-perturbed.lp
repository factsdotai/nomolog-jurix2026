% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cbf1c243982f5283
applies :- building(Building).
obligation_met(Building) :- building(Building), partitioned_into_compartments(Building).
obligation_met(Building) :- building(Building), not neg_scope_1.
r1: violation <= building(Building), not obligation_met(Building).
neg_scope_1 :- building(Building), partitioning_necessary(Building).
