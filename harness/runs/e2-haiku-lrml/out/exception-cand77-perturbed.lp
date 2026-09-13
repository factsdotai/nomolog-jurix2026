% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f6143f0a2bd991cb
applies :- building(Building), phased_evacuation_building(Building), storey(storey, Building), not neg_scope_1.
obligation_met :- protected_lobby(storey).
obligation_met :- protected_corridor(storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(storey, Building), not neg_scope_1, not obligation_met.
neg_scope_1 :- top_storey(storey).
