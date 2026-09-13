% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6240e817a2e69795
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), not neg_scope_1, storey(Storey, Building).
obligation_met(Storey) :- storey(Storey), approached_through_protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_corridor(Storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), not neg_scope_1, storey(Storey, Building), not obligation_met(Storey).
neg_scope_1 :- storey(Storey), top_storey(Storey).
