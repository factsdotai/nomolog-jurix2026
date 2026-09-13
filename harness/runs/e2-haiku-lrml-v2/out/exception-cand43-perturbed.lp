% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 3d7189b71bc68c5b
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), door_onto(Door, corridor), major_route_corridor(corridor).
applies :- door(Door), door_onto(Door, corridor), escape_route(corridor).
obligation_met(Door) :- door(Door), recessed(Door).
r1: violation <= door(Door), door_onto(Door, corridor), major_route_corridor(corridor), not obligation_met(Door).
r2: violation <= door(Door), door_onto(Door, corridor), escape_route(corridor), not obligation_met(Door).
r3: exempt_r2 <= door(Door), minor_utility_door(Door).
#conflict violation, exempt_r2.
r3 > r1.
r3 > r2.
