% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c648519b918ed720
applies :- cavity(Cavity), not neg_scope_1.
obligation_met(Cavity) :- cavity(Cavity), comply_with(Cavity, table_9_1).
r1: violation <= cavity(Cavity), not neg_scope_1, not obligation_met(Cavity).
neg_scope_1 :- cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
neg_scope_1 :- cavity(Cavity), meets_diagram_9_2(Cavity).
neg_scope_1 :- cavity(Cavity), above_fire_resisting_ceiling(Cavity).
