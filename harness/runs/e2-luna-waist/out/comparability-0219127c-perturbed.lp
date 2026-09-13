applies :- liftway(L).
r1: violation <= liftway(L), not suitable_socket_close(L).
suitable_socket_close(L) :- power_socket(P), suitable_for_powering(P, lifting_device), close_to(P, L).
