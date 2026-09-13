% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 3454bfb2c1fcd0a5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute).
obligation_met(ExitRoute) :- exit_route(ExitRoute), separately_constructed(ExitRoute), not neg_scope_1.
r1: violation <= separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
