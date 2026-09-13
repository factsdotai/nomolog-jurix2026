% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 56df44c4f493c595
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), escape_route_from_foot_of_stair(EscapeRouteFromFootOfStair), within(BuildingElement, 1800, EscapeRouteFromFootOfStair).
obligation_met(BuildingElement) :- building_element(BuildingElement), fire_resisting_re30(BuildingElement).
r1: violation <= external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), escape_route_from_foot_of_stair(EscapeRouteFromFootOfStair), within(BuildingElement, 1800, EscapeRouteFromFootOfStair), not obligation_met(BuildingElement).
r2: exempt_r2 <= external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
#conflict violation, exempt_r2.
r2 > r1.
