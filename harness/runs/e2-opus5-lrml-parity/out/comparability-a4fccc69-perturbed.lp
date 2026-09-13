% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3eded971a15383af
applies :- fire_wall(FireWall), separated_part(SeparatedPart), exit_route(ExitRoute).
r1: violation <= fire_wall(FireWall), separated_part(SeparatedPart), exit_route(ExitRoute), uses_fire_wall_door(ExitRoute, FireWall).
