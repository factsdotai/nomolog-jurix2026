% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8f11e0fcbf13fa9e
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- element(Element), external_escape_stair(ExternalEscapeStair), element_near_route(Element, ExternalEscapeStair).
obligation_met(Element) :- element(Element), fire_resisting_re30(Element).
r1: violation <= element(Element), external_escape_stair(ExternalEscapeStair), element_near_route(Element, ExternalEscapeStair), not obligation_met(Element).
r2: exempt_r2 <= element(Element), external_escape_stair(ExternalEscapeStair), element_near_route(Element, ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
#conflict violation, exempt_r2.
r2 > r1.
