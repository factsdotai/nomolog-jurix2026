applies :- fire_wall(W), separated_part(P, W).
r1: violation <= fire_wall(W), separated_part(P, W), exit_route(E, P), uses_fire_wall_door(E, W).
