% Lifting platform: visually/acoustically reflective wall surfaces minimised.
% open-texture: reflective_surfaces_minimised.
applies :- lifting_platform(P).
r1: violation <= lifting_platform(P), not reflective_surfaces_minimised(P).
