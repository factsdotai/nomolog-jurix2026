% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ea9d707fdabff3ba
applies :- building(building), major_renovation(building).
obligation_met :- alt_systems_feasibility_considered(building).
r1: violation <= building(building), major_renovation(building), not obligation_met.
