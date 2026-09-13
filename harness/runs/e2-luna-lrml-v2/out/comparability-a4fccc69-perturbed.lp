% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7f237185f3cd7bee
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- exit_route(exit, part), fire_wall(wall), separated_part(part, wall).
obligation_met :- constructed_separately(exit), not neg_scope_1.
r1: violation <= exit_route(exit, part), fire_wall(wall), separated_part(part, wall), not obligation_met.
neg_scope_1 :- uses_fire_wall_door(exit, wall).
