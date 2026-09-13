% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 838297be25f6db6d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- exit_route(ExitRoute), fire_wall(FireWall), separated_part(ExitRoute, FireWall).
obligation_met(ExitRoute) :- exit_route(ExitRoute), constructed_separately(ExitRoute), not neg_scope_1.
r1: violation <= exit_route(ExitRoute), fire_wall(FireWall), separated_part(ExitRoute, FireWall), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
