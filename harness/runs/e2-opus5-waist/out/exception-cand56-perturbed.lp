% permission with a carve-out, and an exception defeating the carve-out
applies :- fire_doorset(D), fusible_link(D), escape_opening(D).
r1: violation <= fire_doorset(D), fusible_link(D), escape_opening(D).
r2: exempt <= fire_doorset(D), fusible_link(D), escape_opening(D), complies_c7(D).
#conflict violation, exempt.
r2 > r1.
