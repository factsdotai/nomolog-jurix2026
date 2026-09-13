% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: dc934a7a9b2ca781
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- separated_part(SeparatedPart), exit_route(ExitRoute).
applies :- separated_part(SeparatedPart), fire_wall_door(FireWallDoor).
obligation_met(SeparatedPart) :- separated_part(SeparatedPart), constructed_separately(SeparatedPart), not neg_scope_1.
r1: violation <= separated_part(SeparatedPart), exit_route(ExitRoute), not obligation_met(SeparatedPart).
r2: violation <= separated_part(SeparatedPart), fire_wall_door(FireWallDoor), uses_fire_wall_door(SeparatedPart).
neg_scope_1 :- separated_part(SeparatedPart), uses_fire_wall_door(SeparatedPart).
