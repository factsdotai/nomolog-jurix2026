% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 213287592cd95078
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor).
r1: violation <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), projects_when_open(Door).
r2: exempt_r2 <= door(Door), corridor(Corridor), door_onto(Door, Corridor), major_route_corridor(Corridor), minor_utility_door(Door).
#conflict violation, exempt_r2.
r2 > r1.
