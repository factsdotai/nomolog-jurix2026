applies :- sewer(S), installed_in_ground(S).
applies :- manhole(M), installed_in_ground(M).
r1: violation <= sewer(S), installed_in_ground(S), not soil_resistance_ok(S).
r2: violation <= manhole(M), installed_in_ground(M), not soil_resistance_ok(M).
soil_resistance_ok(X) :- withstands_soil_load(X), withstands_soil_corrosion(X), withstands_soil_subsidence(X).
