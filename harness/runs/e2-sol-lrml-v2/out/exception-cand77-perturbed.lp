% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d493050c3598e8fc
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(building), phased_evacuation_building(building), storey(storey, building), not neg_scope_1.
obligation_met :- protected_lobby(storey).
obligation_met :- protected_corridor(storey).
r1: violation <= building(building), phased_evacuation_building(building), storey(storey, building), not neg_scope_1, not obligation_met.
neg_scope_1 :- top_storey(storey).
