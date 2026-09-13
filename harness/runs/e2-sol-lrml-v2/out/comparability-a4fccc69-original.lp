% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c22959f4490b3e55
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- exit_route(e, p), fire_wall(w), separated_part(p, w).
r1: violation <= exit_route(e, p), fire_wall(w), separated_part(p, w), uses_fire_wall_door(e, w).
