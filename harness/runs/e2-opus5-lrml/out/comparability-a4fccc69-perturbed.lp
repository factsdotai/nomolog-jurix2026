% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bf6b305c3a028be4
applies :- fire_wall(FireWall), separated_part(SeparatedPart), separated_part_of(SeparatedPart, FireWall), exit_route(ExitRoute).
obligation_met(ExitRoute) :- exit_route(ExitRoute), constructed_separately(ExitRoute), not neg_scope_1.
r1: violation <= fire_wall(FireWall), separated_part(SeparatedPart), separated_part_of(SeparatedPart, FireWall), exit_route(ExitRoute), not obligation_met(ExitRoute).
neg_scope_1 :- exit_route(ExitRoute), fire_wall(FireWall), uses_fire_wall_door(ExitRoute, FireWall).
