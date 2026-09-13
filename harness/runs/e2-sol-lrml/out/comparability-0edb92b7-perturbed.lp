% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c44ae67331493b2c
applies :- foundation_drainage(drainage_water, property).
obligation_met :- flows_away_from_property(drainage_water), not neg_scope_1.
r1: violation <= foundation_drainage(drainage_water, property), not obligation_met.
neg_scope_1 :- causes_problems_to_sewer_systems(drainage_water).
