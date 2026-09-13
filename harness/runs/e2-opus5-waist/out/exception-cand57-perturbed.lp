% exception as superior defeasible rule (the defeat idiom)
applies :- protected_stair(S), covered_car_park(P), connects_to(S, P).
r1: violation <= protected_stair(S), covered_car_park(P), connects_to(S, P).
r2: exempt <= protected_stair(S), covered_car_park(P), connects_to(S, P), open_sided(P).
#conflict violation, exempt.
r2 > r1.
