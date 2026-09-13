% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a6e33a2c83973a47
applies :- exit_route(exit, part), fire_wall(wall), separated_part(part, wall).
r1: violation <= exit_route(exit, part), fire_wall(wall), separated_part(part, wall), uses_fire_wall_door(exit, wall).
