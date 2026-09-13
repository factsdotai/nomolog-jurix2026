% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 33d061c524a02e30
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_2.
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), not neg_scope_1, not neg_scope_3.
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_2, projects_when_open(Door).
r2: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), not neg_scope_1, not neg_scope_3, projects_when_open(Door).
neg_scope_1 :- corridor(Corridor), minor_corridor(Corridor).
neg_scope_2 :- door(Door), minor_utility_door(Door).
neg_scope_3 :- door(Door), minor_utility_door(Door).
