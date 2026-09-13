applies :- sewer(S), installed_in_ground(S).
r1: violation <= sewer(S), installed_in_ground(S), not load_ok(S).
r2: violation <= sewer(S), installed_in_ground(S), not corrosion_ok(S).
r3: violation <= sewer(S), installed_in_ground(S), not subsidence_ok(S).
load_ok(S) :- withstands_soil_load(S).
corrosion_ok(S) :- withstands_soil_corrosion(S).
subsidence_ok(S) :- withstands_soil_subsidence(S).
