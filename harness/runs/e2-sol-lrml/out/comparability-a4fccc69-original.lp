% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 369f43d37f2a8877
applies :- exit_route(exit, part), fire_wall(wall), separated_part(part, wall).
r1: violation <= exit_route(exit, part), fire_wall(wall), separated_part(part, wall), uses_fire_wall_door(exit, wall).
