% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 707e908342f726a1
applies :- external_escape_stair(ExternalEscapeStair), element_near_route(building_element, ExternalEscapeStair).
obligation_met(ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), fire_resisting_re30(building_element).
obligation_met(ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= external_escape_stair(ExternalEscapeStair), element_near_route(building_element, ExternalEscapeStair), not obligation_met(ExternalEscapeStair).
