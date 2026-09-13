% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0695247e2e48dbf7
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- fire_wall(FireWall), separated_part(part, FireWall), exit_route(exit, part).
r1: violation <= fire_wall(FireWall), separated_part(part, FireWall), exit_route(exit, part), uses_fire_wall_door(exit, FireWall).
