% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7f3eca7ec8117554
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor).
obligation_met :- not neg_scope_1.
obligation_met :- door(Door), minor_utility_door(Door).
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not obligation_met.
neg_scope_1 :- door(Door), projects_when_open(Door).
