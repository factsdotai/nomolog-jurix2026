% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6509a59814005a89
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building), element_near_route(Building, 1800), external_escape_stair(Building).
obligation_met(Building) :- building(Building), fire_resisting_re30(Building).
r1: violation <= building(Building), element_near_route(Building, 1800), external_escape_stair(Building), not obligation_met(Building).
r2: exempt_r2 <= building(Building), alternative_escape_routes_from_foot(Building).
#conflict violation, exempt_r2.
r2 > r1.
