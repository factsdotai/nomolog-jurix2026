applies :- liftway(L).
r1: violation <= liftway(L), not socket_ok(L).
socket_ok(L) :- liftway(L), power_socket(P), suitable_for_powering(P, lifting_device), close_to(P, L).
