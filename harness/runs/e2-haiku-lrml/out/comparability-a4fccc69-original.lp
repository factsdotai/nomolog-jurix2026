% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3454bfb2c1fcd0a5
applies :- separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute).
obligation_met(ExitRoute) :- exit_route(ExitRoute), separately_constructed(ExitRoute), not neg_scope_1.
r1: violation <= separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
