% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d60ae79c612f1de8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- storey(Storey), phased_evacuation_building(Storey), not neg_scope_1.
obligation_met(Storey) :- storey(Storey), approached_through_protected_lobby(Storey).
obligation_met(Storey) :- storey(Storey), approached_through_protected_corridor(Storey).
r1: violation <= storey(Storey), phased_evacuation_building(Storey), not neg_scope_1, not obligation_met(Storey).
neg_scope_1 :- storey(Storey), top_storey(Storey).
