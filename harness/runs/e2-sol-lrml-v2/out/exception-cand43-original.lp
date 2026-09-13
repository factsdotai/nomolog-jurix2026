% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 59cf7ff02319f205
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1.
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1, projects_when_open(Door).
neg_scope_1 :- door(Door), minor_utility_door(Door).
