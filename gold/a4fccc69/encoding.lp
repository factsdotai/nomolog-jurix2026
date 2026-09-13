% Parts separated by a fire wall: exits constructed so no fire-wall door is
% needed in the event of fire.
applies :- fire_wall(W).
r1: violation <= fire_wall(W), separated_part(P, W), exit_route(E, P), uses_fire_wall_door(E, W).
