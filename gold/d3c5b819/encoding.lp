% Buried sewer withstands soil load, soil corrosion, and soil subsidence.
% open-texture: the three withstands_* leaves.
applies :- sewer(S), installed_in_ground(S).
r1: violation <= sewer(S), installed_in_ground(S), not withstands_soil_load(S).
r2: violation <= sewer(S), installed_in_ground(S), not withstands_soil_corrosion(S).
r3: violation <= sewer(S), installed_in_ground(S), not withstands_soil_subsidence(S).
