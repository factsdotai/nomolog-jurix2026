% Membrane penetrations: robust and durable seal at each penetration.
% open-texture: robust_seal.
applies :- membrane(M).
r1: violation <= membrane(M), penetration(P, M), not robust_seal(P).
