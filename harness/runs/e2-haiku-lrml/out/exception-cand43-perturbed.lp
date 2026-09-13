% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 36f6a62068b02a5a
applies :- door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not neg_scope_1.
applies :- door(Door), door_onto(Door, corridor), escape_route(corridor), not neg_scope_2.
obligation_met(Door) :- door(Door), recessed(Door).
r1: violation <= door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not neg_scope_1, not obligation_met(Door).
r2: violation <= door(Door), door_onto(Door, corridor), escape_route(corridor), not neg_scope_2, not obligation_met(Door).
neg_scope_1 :- door(Door), minor_utility_door(Door).
neg_scope_2 :- door(Door), minor_utility_door(Door).
