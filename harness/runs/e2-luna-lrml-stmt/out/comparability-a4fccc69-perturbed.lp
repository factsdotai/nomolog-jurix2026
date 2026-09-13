% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a17902f7cae3a147
applies :- exit_route(ExitRoute), fire_wall(FireWall), separated_part(SeparatedPart), fire_wall_door(FireWallDoor).
obligation_met(ExitRoute) :- exit_route(ExitRoute), constructed_separately(ExitRoute), not neg_scope_1.
r1: violation <= exit_route(ExitRoute), fire_wall(FireWall), separated_part(SeparatedPart), fire_wall_door(FireWallDoor), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
