% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 049ffd57c862438a
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- external_escape_stair(s), element_near_route(e, s).
obligation_met :- fire_resisting_re30(e).
r1: violation <= external_escape_stair(s), element_near_route(e, s), not obligation_met.
r2: exempt_r2 <= external_escape_stair(s), alternative_escape_routes_from_foot(s).
#conflict violation, exempt_r2.
r2 > r1.
