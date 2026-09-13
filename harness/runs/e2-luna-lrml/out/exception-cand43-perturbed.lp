% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 10d7b981fa0e8ac0
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1.
obligation_met(Door) :- door(Door), recessed(Door), not neg_scope_2.
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not neg_scope_1, not obligation_met(Door).
neg_scope_1 :- door(Door), minor_utility_door(Door).
neg_scope_2 :- door(Door), projects_when_open(Door).
