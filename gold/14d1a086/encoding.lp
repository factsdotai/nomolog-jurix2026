% Lifting device: end opposite the entry point against a wall at every floor
% level served. open-texture: opposite_end_against_wall.
applies :- lifting_device(D).
r1: violation <= lifting_device(D), serves_floor(D, F), not opposite_end_against_wall(D, F).
