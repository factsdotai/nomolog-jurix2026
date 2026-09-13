% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e283d3ee4affe71c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- exit_route(exit, part), separated_part(part, wall), fire_wall(wall), fire_wall_door(door, wall).
r1: violation <= exit_route(exit, part), separated_part(part, wall), fire_wall(wall), fire_wall_door(door, wall), uses_fire_wall_door(exit, wall).
