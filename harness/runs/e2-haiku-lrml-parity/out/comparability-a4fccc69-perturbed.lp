% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9c10e688f6fc2cd6
applies :- separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute).
r1: violation <= separated_part(SeparatedPart), fire_wall(FireWall), exit_route(ExitRoute), uses_fire_wall_door(ExitRoute, FireWall).
