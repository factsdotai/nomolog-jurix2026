% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2bfe0f386f715c1e
applies :- external_escape_stair(ExternalEscapeStair), element(Element), element_near_route(Element, ExternalEscapeStair), distance_to_escape_route(Element, ElementDistanceToEscapeRoute), ElementDistanceToEscapeRoute <= 1800, not neg_scope_1.
obligation_met(Element) :- element(Element), fire_resisting_re30(Element).
r1: violation <= external_escape_stair(ExternalEscapeStair), element(Element), element_near_route(Element, ExternalEscapeStair), distance_to_escape_route(Element, ElementDistanceToEscapeRoute), ElementDistanceToEscapeRoute <= 1800, not neg_scope_1, not obligation_met(Element).
neg_scope_1 :- external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
