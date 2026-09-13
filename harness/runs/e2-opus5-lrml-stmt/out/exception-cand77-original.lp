% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 83519d32c6ed5b9f
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), not neg_scope_1.
obligation_met(Storey) :- storey(Storey), approached_through_protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_corridor(Storey).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), not neg_scope_1, not obligation_met(Storey).
neg_scope_1 :- storey(Storey), top_storey(Storey).
