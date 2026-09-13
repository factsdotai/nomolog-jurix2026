% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 985c065faa3098fa
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building), external_escape_stair(stair), element_near_route(Building, stair), within(Building, 1800).
obligation_met(Building) :- building(Building), fire_resisting_re30(Building).
r1: violation <= building(Building), external_escape_stair(stair), element_near_route(Building, stair), within(Building, 1800), not obligation_met(Building).
r2: exempt_r2 <= building(Building), external_escape_stair(stair), alternative_escape_routes_from_foot(stair).
#conflict violation, exempt_r2.
r2 > r1.
