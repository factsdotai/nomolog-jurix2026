% Nested exception: permission (fusible link) -> prohibition (escape opening) ->
% counter-exception (C7 compliance). Two defeat layers on the same head.
applies :- fire_doorset(D), fusible_link(D).
r1: violation <= fire_doorset(D), fusible_link(D), escape_opening(D).
r2: exempt <= fire_doorset(D), fusible_link(D), escape_opening(D), complies_c7(D).
#conflict violation, exempt.
r2 > r1.
