applies :- landing_door(D, B), non_dwelling_building(B).
r1: violation <= landing_door(D, B), non_dwelling_building(B), swings_across_landing(D).
r2: exempt <= landing_door(D, B), non_dwelling_building(B), complies_para_1_21c(D).
#conflict violation, exempt.
r2 > r1.
