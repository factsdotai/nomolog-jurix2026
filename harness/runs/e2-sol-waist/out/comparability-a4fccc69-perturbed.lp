applies :- exit_route(E, P), separated_part(P, W), fire_wall(W).
r1: violation <= exit_route(E, P), separated_part(P, W), fire_wall(W), uses_fire_wall_door(E, W).
