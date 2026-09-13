applies :- door_onto(D, C), major_route_corridor(C).
applies :- door_onto(D, C), minor_corridor(C).
r1: violation <= door_onto(D, C), major_route_corridor(C), projects_when_open(D).
r2: violation <= door_onto(D, C), minor_corridor(C), projects_when_open(D).
r3: exempt <= minor_utility_door(D).
#conflict violation, exempt.
r3 > r1.
r3 > r2.
