% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dfc449cb5c672d22
applies :- foundation_drainage(drainage, property).
obligation_met :- flows_away_from_property(drainage), not neg_scope_1.
r1: violation <= foundation_drainage(drainage, property), not obligation_met.
neg_scope_1 :- causes_problems_to_sewer_systems(drainage).
