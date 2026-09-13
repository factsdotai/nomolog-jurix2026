% More than one exposed facade => background-ventilator area on each facade
% similar (cross-ventilation). open-texture: similar_ventilator_area (symmetric
% closure via helper).
applies :- dwelling(D), exposed_facade(F1, D), exposed_facade(F2, D), F1 != F2.
r1: violation <= dwelling(D), exposed_facade(F1, D), exposed_facade(F2, D), F1 != F2, not similar(F1, F2).
similar(F1, F2) :- similar_ventilator_area(F1, F2).
similar(F1, F2) :- similar_ventilator_area(F2, F1).
