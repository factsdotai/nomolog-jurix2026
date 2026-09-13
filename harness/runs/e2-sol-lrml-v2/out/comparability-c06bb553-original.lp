% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ea9d707fdabff3ba
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(building), major_renovation(building).
obligation_met :- alt_systems_feasibility_considered(building).
r1: violation <= building(building), major_renovation(building), not obligation_met.
