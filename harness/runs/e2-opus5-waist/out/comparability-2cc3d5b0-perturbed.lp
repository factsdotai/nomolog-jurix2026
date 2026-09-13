% absence-of-pollutants condition as negation-as-failure guard
applies :- occupied_space(S), not excessive_pollutants(S).
r1: violation <= occupied_space(S), not excessive_pollutants(S), supply_rate_per_person(S, R), R < 10.
