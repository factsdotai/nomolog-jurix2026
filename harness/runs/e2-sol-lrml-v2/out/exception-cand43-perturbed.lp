% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 27ead3e9436acfbd
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door_onto(door, corridor), major_route_corridor(corridor), not neg_scope_1.
r1: violation <= door_onto(door, corridor), major_route_corridor(corridor), not neg_scope_1, projects_when_open(door).
neg_scope_1 :- minor_utility_door(door).
