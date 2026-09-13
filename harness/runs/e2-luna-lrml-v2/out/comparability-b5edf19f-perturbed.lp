% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 097c90771dea75a4
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- fire_compartments(FireCompartments), partitioning_necessary(FireCompartments).
obligation_met(FireCompartments) :- fire_compartments(FireCompartments), partitioned_into_compartments(FireCompartments).
r1: violation <= fire_compartments(FireCompartments), partitioning_necessary(FireCompartments), not obligation_met(FireCompartments).
