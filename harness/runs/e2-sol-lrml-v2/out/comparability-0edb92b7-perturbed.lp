% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: dfc449cb5c672d22
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- foundation_drainage(drainage, property).
obligation_met :- flows_away_from_property(drainage), not neg_scope_1.
r1: violation <= foundation_drainage(drainage, property), not obligation_met.
neg_scope_1 :- causes_problems_to_sewer_systems(drainage).
