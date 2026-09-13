% negation-as-failure guard: requirement holds absent excessive pollutants
applies :- occupied_space(S), not excessive_pollutants(S).
r1: violation <= occupied_space(S), not excessive_pollutants(S), supply_rate_per_person(S, R), R < 10.
r2: exempt <= occupied_space(S), storage_room(S).
#conflict violation, exempt.
r2 > r1.
