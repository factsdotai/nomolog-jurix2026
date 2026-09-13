applies :- landing(L).
r1: violation <= landing(L), not landing_ok(L).
landing_ok(L) :- safe(L), sufficiently_spacious(L), suitable_for_purpose(L).
