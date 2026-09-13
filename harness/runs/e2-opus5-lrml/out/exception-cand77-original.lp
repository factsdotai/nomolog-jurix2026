% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 01b5ab30c3929d4c
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), not neg_scope_1.
obligation_met(Storey) :- storey(Storey), stair(Storey, StoreyStair), approached_through_protected_lobby(StoreyStair).
obligation_met(Storey) :- storey(Storey), stair(Storey, StoreyStair), approached_through_protected_corridor(StoreyStair).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), part_of(Storey, Building), not neg_scope_1, not obligation_met(Storey).
neg_scope_1 :- storey(Storey), top_storey(Storey).
