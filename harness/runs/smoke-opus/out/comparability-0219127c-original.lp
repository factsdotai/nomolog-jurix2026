applies :- liftway(Lw).
r1: violation <= liftway(Lw), not socket_ok(Lw).
socket_ok(Lw) :- power_socket(P), close_to(P, Lw), suitable_for_powering(P, lifting_device).
