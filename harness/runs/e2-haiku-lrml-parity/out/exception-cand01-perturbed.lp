% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a89fb3725b03e618
applies :- cavity(Cavity), not neg_scope_1, not neg_scope_2, not neg_scope_3.
obligation_met(Cavity) :- cavity(Cavity), surface_class_ok(Cavity).
r1: violation <= cavity(Cavity), not neg_scope_1, not neg_scope_2, not neg_scope_3, not obligation_met(Cavity).
neg_scope_1 :- cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
neg_scope_2 :- cavity(Cavity), meets_diagram_9_2(Cavity).
neg_scope_3 :- cavity(Cavity), above_fire_resisting_ceiling(Cavity).
