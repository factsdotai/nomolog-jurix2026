% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 866998d92a7b1901
applies :- door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not neg_scope_1.
applies :- door(Door), door_onto(Door, corridor), minor_corridor(corridor), not neg_scope_2.
obligation_met(Door) :- door(Door), recessed(Door).
obligation_met(Door) :- door(Door), not neg_scope_3.
r1: violation <= door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not neg_scope_1, not obligation_met(Door).
r2: violation <= door(Door), door_onto(Door, corridor), minor_corridor(corridor), not neg_scope_2, not obligation_met(Door).
neg_scope_1 :- door(Door), minor_utility_door(Door).
neg_scope_2 :- door(Door), minor_utility_door(Door).
neg_scope_3 :- door(Door), projects_when_open(Door).
