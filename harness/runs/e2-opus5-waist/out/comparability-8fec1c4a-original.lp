% open-texture: robust_seal at each penetration
applies :- membrane(M), penetration(P, M).
r1: violation <= membrane(M), penetration(P, M), not robust_seal(P).
