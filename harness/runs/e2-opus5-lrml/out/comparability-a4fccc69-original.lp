% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5b839301c4c53f4c
applies :- fire_wall(FireWall), separated_part(SeparatedPart), separated_part_of(SeparatedPart, FireWall), exit_route(ExitRoute), exit_route_of(ExitRoute, SeparatedPart).
r1: violation <= fire_wall(FireWall), separated_part(SeparatedPart), separated_part_of(SeparatedPart, FireWall), exit_route(ExitRoute), exit_route_of(ExitRoute, SeparatedPart), uses_fire_wall_door(ExitRoute, FireWall).
