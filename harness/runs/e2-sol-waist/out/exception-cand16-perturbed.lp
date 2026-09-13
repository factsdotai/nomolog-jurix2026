applies :- non_dwelling_building(B), corridor_door(D), landing_door(D, B).
r1: violation <= non_dwelling_building(B), corridor_door(D), landing_door(D, B), swings_across_landing(D).
r2: exempt <= non_dwelling_building(B), corridor_door(D), landing_door(D, B), complies_para_1_21c(D).
#conflict violation, exempt.
r2 > r1.
