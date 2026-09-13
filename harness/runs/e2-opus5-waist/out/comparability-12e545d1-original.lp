% "more than one facade" as two distinct facades (bounded counting);
% similarity required pairwise
applies :- dwelling(D), exposed_facade(F1, D), exposed_facade(F2, D), F1 != F2.
r1: violation <= dwelling(D), exposed_facade(F1, D), exposed_facade(F2, D), F1 != F2, not similar_ventilator_area(F1, F2).
