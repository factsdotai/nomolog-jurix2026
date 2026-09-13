% Exception via defined term: open_sided is an open-texture leaf carrying the
% cross-referenced definition. open-texture: open_sided.
applies :- protected_stair(S).
r1: violation <= protected_stair(S), connects_to(S, P), covered_car_park(P).
r2: exempt <= protected_stair(S), connects_to(S, P), covered_car_park(P), open_sided(P).
#conflict violation, exempt.
r2 > r1.
