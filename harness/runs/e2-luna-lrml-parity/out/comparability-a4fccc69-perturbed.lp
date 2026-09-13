% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fe97e3fa4893ca78
applies :- exit_route(ExitRoute), fire_wall(FireWall), separated_part(SeparatedPart).
obligation_met(ExitRoute) :- exit_route(ExitRoute), constructed_separately(ExitRoute), not neg_scope_1.
r1: violation <= exit_route(ExitRoute), fire_wall(FireWall), separated_part(SeparatedPart), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
