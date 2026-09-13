% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 766b2c39304188e9
applies :- door_onto(door, corridor), major_route_corridor(corridor), not neg_scope_1.
r1: violation <= door_onto(door, corridor), major_route_corridor(corridor), not neg_scope_1, projects_when_open(door).
neg_scope_1 :- minor_utility_door(door).
