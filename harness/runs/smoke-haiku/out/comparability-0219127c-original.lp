applies :- liftway(L), power_socket(P), close_to(P, L), suitable_for_powering(P, lifting_device).
r1: violation <= liftway(L), not socket_ok(L).
socket_ok(L) :- power_socket(P), close_to(P, L), suitable_for_powering(P, lifting_device).
