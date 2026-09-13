% Cross-reference exception: compliance with the cited paragraph is an open-texture
% leaf. open-texture: complies_para_1_21c.
applies :- non_dwelling_building(B), landing_door(D, B).
r1: violation <= non_dwelling_building(B), landing_door(D, B), swings_across_landing(D).
r2: exempt <= non_dwelling_building(B), landing_door(D, B), swings_across_landing(D), complies_para_1_21c(D).
#conflict violation, exempt.
r2 > r1.
