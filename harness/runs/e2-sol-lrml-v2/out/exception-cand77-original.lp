% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7bf77e2feb2b3582
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(b), phased_evacuation_building(b), storey(s, b), not neg_scope_1.
obligation_met :- protected_lobby(s).
obligation_met :- protected_corridor(s).
r1: violation <= building(b), phased_evacuation_building(b), storey(s, b), not neg_scope_1, not obligation_met.
neg_scope_1 :- top_storey(s).
