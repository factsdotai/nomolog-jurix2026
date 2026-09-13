% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 32019800e269ca16
applies :- exit_route(e1, p1), fire_wall(w1), separated_part(p1, w1).
r1: violation <= exit_route(e1, p1), fire_wall(w1), separated_part(p1, w1), uses_fire_wall_door(e1, w1).
