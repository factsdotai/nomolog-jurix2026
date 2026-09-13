% exception as superior defeasible rule (the defeat idiom)
applies :- wheelchair_route(R).
r1: violation <= wheelchair_route(R), travel_distance(R, D), D > 40000.
r2: exempt <= wheelchair_route(R), greater_distance_agreed(R).
#conflict violation, exempt.
r2 > r1.
