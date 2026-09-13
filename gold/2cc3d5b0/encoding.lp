% Supply rate of 10 l/s per person, in the absence of excessive pollutants.
applies :- occupied_space(S).
r1: violation <= occupied_space(S), supply_rate_per_person(S, V), V < 10, not excessive_pollutants(S).
