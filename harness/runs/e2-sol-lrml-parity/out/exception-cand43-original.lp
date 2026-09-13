% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ed496ef7a273a6a3
applies :- door_onto(door, corridor), major_route_corridor(corridor).
obligation_met :- minor_utility_door(door).
obligation_met :- not neg_scope_1.
r1: violation <= door_onto(door, corridor), major_route_corridor(corridor), not obligation_met.
neg_scope_1 :- projects_when_open(door).
