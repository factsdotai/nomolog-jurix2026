% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0c8c17adca6858a9
applies :- building(x), major_renovation(x).
obligation_met :- alt_systems_feasibility_considered(x).
r1: violation <= building(x), major_renovation(x), not obligation_met.
