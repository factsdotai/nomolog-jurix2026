% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5f6f938a5f4811bc
applies :- external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), within(ElementNearRoute, 1800).
obligation_met(ElementNearRoute, ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), fire_resisting_re30(ElementNearRoute).
obligation_met(ElementNearRoute, ExternalEscapeStair) :- element_near_route(ElementNearRoute), external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), within(ElementNearRoute, 1800), not obligation_met(ElementNearRoute, ExternalEscapeStair).
