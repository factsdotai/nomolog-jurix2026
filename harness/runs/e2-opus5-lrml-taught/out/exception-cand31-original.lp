% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0976129ed3bba2e1
applies :- external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), element_near_route(BuildingElement, ExternalEscapeStair), within(BuildingElement, 1800), not neg_scope_1.
obligation_met(BuildingElement) :- building_element(BuildingElement), fire_resisting_re30(BuildingElement).
r1: violation <= external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), element_near_route(BuildingElement, ExternalEscapeStair), within(BuildingElement, 1800), not neg_scope_1, not obligation_met(BuildingElement).
neg_scope_1 :- external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
