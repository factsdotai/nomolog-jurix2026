% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 00fd23685f4122a3
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- fire_wall(FireWall), separated_part(building_part, FireWall), exit_route(exit, building_part).
obligation_met :- separately_constructed(exit), not neg_scope_1.
r1: violation <= fire_wall(FireWall), separated_part(building_part, FireWall), exit_route(exit, building_part), not obligation_met.
neg_scope_1 :- fire_wall(FireWall), uses_fire_wall_door(exit, FireWall).
