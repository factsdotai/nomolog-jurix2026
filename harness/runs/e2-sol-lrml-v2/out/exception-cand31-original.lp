% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f9b157fa7c06135e
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- external_escape_stair(s1), element_near_route(e1, s1).
obligation_met :- fire_resisting_re30(e1).
r1: violation <= external_escape_stair(s1), element_near_route(e1, s1), not obligation_met.
r2: exempt_r2 <= external_escape_stair(s1), element_near_route(e1, s1), alternative_escape_routes_from_foot(s1).
#conflict violation, exempt_r2.
r2 > r1.
