% "A power socket, suitable for powering the lifting device, is provided close to the liftway."
% Both qualities are open-textured leaves: their extension comes from case facts.

applies :- liftway(L).

r1: violation <= liftway(L), not socket_ok(L).

% open-texture: suitable_for_powering, close_to
socket_ok(L) :- power_socket(P), suitable_for_powering(P, lifting_device), close_to(P, L).
