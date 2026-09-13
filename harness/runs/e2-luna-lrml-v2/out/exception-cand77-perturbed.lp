% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6b989f9ee79c4e85
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), phased_evacuation_building(Building), storey(Storey), storey(Storey, Building), not neg_scope_1, stairs(Stairs).
obligation_met(Stairs) :- stairs(Stairs), approached_through_protected_lobby(Stairs).
obligation_met(Stairs) :- stairs(Stairs), approached_through_protected_corridor(Stairs).
r1: violation <= building(Building), phased_evacuation_building(Building), storey(Storey), storey(Storey, Building), not neg_scope_1, stairs(Stairs), not obligation_met(Stairs).
neg_scope_1 :- storey(Storey), top_storey(Storey).
