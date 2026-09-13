% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8cf116874906e848
applies :- door(Door), door_onto(Door, corridor), major_route_corridor(corridor).
obligation_met(Door) :- door(Door), not neg_scope_1.
obligation_met(Door) :- door(Door), minor_utility_door(Door).
r1: violation <= door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not obligation_met(Door).
neg_scope_1 :- door(Door), projects_when_open(Door).
