applies :- protruding_element(E).
r1: violation <= protruding_element(E), free_height(E, H), H < 2200.
r2: exempt <= protruding_element(E), area_protected(E).
#conflict violation, exempt.
r2 > r1.
