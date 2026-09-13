% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b0234109f65e0039
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor).
obligation_met(Door) :- door(Door), minor_utility_door(Door).
obligation_met(Door) :- door(Door), not neg_scope_1.
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not obligation_met(Door).
neg_scope_1 :- door(Door), projects_when_open(Door).
