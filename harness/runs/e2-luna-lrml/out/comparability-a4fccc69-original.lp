% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7f237185f3cd7bee
applies :- exit_route(exit, part), fire_wall(wall), separated_part(part, wall).
obligation_met :- constructed_separately(exit), not neg_scope_1.
r1: violation <= exit_route(exit, part), fire_wall(wall), separated_part(part, wall), not obligation_met.
neg_scope_1 :- uses_fire_wall_door(exit, wall).
