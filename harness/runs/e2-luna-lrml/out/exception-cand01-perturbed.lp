% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d3c7b929faf2060c
applies :- cavity(Cavity), not neg_scope_1, not neg_scope_2, not neg_scope_3.
obligation_met :- comply_with(cavity_surfaces, table_9_1_flame_spread_class_requirements).
r1: violation <= cavity(Cavity), not neg_scope_1, not neg_scope_2, not neg_scope_3, not obligation_met.
neg_scope_1 :- cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
neg_scope_2 :- cavity(Cavity), meets_diagram_9_2(Cavity).
neg_scope_3 :- cavity(Cavity), above_fire_resisting_ceiling(Cavity).
