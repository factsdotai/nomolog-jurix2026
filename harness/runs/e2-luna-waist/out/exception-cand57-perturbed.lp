applies :- protected_stair(S), connects_to(S, P), covered_car_park(P).
r1: violation <= protected_stair(S), connects_to(S, P), covered_car_park(P), not open_sided(P).
r2: exempt <= protected_stair(S), connects_to(S, P), covered_car_park(P), open_sided(P).
#conflict violation, exempt.
r2 > r1.
