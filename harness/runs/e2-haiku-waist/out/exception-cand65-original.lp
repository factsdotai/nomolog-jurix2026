applies :- wheelchair_route(R), travel_distance(R, D).
r1: violation <= wheelchair_route(R), travel_distance(R, D), D > 40, not greater_distance_agreed(R).
r2: exempt <= wheelchair_route(R), travel_distance(R, D), D > 40, greater_distance_agreed(R).
#conflict violation, exempt.
r2 > r1.
