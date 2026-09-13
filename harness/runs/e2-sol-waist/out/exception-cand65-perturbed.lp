applies :- wheelchair_route(R).
r1: violation <= wheelchair_route(R), travel_distance(R, D), D > 40000.
r2: exempt <= wheelchair_route(R), travel_distance(R, D), D > 40000, greater_distance_agreed(R), service_corridor(R).
#conflict violation, exempt.
r2 > r1.
