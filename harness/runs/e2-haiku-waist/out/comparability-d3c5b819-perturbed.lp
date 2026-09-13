applies :- sewer(S), installed_in_ground(S).
r1: violation <= sewer(S), installed_in_ground(S), not resistance_ok(S).
resistance_ok(S) :- withstands_soil_load(S), withstands_soil_corrosion(S), withstands_soil_subsidence(S).
