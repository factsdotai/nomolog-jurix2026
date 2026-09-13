% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6240e817a2e69795
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), not neg_scope_1, storey(Storey, Building).
obligation_met(Storey) :- storey(Storey), approached_through_protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_corridor(Storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), not neg_scope_1, storey(Storey, Building), not obligation_met(Storey).
neg_scope_1 :- storey(Storey), top_storey(Storey).
