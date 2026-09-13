% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b823b996c43858a7
applies :- external_escape_stair(ExternalEscapeStair), element(Element), element_near_route(Element, ExternalEscapeStair).
obligation_met(Element, ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), element(Element), fire_resisting_re30(Element).
obligation_met(Element, ExternalEscapeStair) :- element(Element), external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= external_escape_stair(ExternalEscapeStair), element(Element), element_near_route(Element, ExternalEscapeStair), not obligation_met(Element, ExternalEscapeStair).
