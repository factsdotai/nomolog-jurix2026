% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f9f31a4a056b97ae
applies :- external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), element_near_route(BuildingElement, ExternalEscapeStair), distance_from_escape_route(BuildingElement, BuildingElementDistanceFromEscapeRoute), BuildingElementDistanceFromEscapeRoute <= 1800, not neg_scope_1.
obligation_met(BuildingElement) :- building_element(BuildingElement), fire_resisting_re30(BuildingElement).
r1: violation <= external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), element_near_route(BuildingElement, ExternalEscapeStair), distance_from_escape_route(BuildingElement, BuildingElementDistanceFromEscapeRoute), BuildingElementDistanceFromEscapeRoute <= 1800, not neg_scope_1, not obligation_met(BuildingElement).
neg_scope_1 :- external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
