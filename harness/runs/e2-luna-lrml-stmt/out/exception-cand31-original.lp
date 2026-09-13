% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b5de183a965bcf5a
applies :- external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute).
obligation_met(ElementNearRoute) :- element_near_route(ElementNearRoute), alternative_escape_routes_from_foot(AlternativeEscapeRoutesFromFoot).
obligation_met(ElementNearRoute) :- element_near_route(ElementNearRoute), fire_resisting_re30(ElementNearRoute).
r1: violation <= external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), not obligation_met(ElementNearRoute).
