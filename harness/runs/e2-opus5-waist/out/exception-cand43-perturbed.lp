% exception as superior defeasible rule
applies :- door_onto(D, C), major_route_corridor(C).
r1: violation <= door_onto(D, C), major_route_corridor(C), projects_when_open(D).
r2: exempt <= door_onto(D, C), major_route_corridor(C), minor_utility_door(D).
#conflict violation, exempt.
r2 > r1.
