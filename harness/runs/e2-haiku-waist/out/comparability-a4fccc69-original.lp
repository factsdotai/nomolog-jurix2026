applies :- separated_part(P, W), fire_wall(W), exit_route(E, P).
r1: violation <= separated_part(P, W), fire_wall(W), exit_route(E, P), uses_fire_wall_door(E, W).
