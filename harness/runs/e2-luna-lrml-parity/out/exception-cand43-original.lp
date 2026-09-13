% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 15cb45f70199bdab
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor).
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), escape_route(Corridor).
obligation_met(Door) :- door(Door), not neg_scope_1.
obligation_met(Door) :- door(Door), minor_utility_door(Door).
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), not obligation_met(Door).
r2: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), escape_route(Corridor), not obligation_met(Door).
neg_scope_1 :- door(Door), projects_when_open(Door).
