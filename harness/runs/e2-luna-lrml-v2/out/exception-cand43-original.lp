% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 10d7b981fa0e8ac0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1.
obligation_met(Door) :- door(Door), recessed(Door), not neg_scope_2.
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1, not obligation_met(Door).
neg_scope_1 :- door(Door), minor_utility_door(Door).
neg_scope_2 :- door(Door), projects_when_open(Door).
