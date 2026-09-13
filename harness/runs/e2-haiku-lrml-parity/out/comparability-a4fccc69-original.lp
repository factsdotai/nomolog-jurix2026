% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e9c610afaa3f8de8
applies :- separated_part(SeparatedPart), fire_wall(FireWall), part_of(SeparatedPart, FireWall).
obligation_met(SeparatedPart) :- separated_part(SeparatedPart), separate_exit_route(SeparatedPart), not neg_scope_1.
r1: violation <= separated_part(SeparatedPart), fire_wall(FireWall), part_of(SeparatedPart, FireWall), not obligation_met(SeparatedPart).
neg_scope_1 :- separated_part(SeparatedPart), fire_wall(FireWall), uses_fire_wall_door(SeparatedPart, FireWall).
