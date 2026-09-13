% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b6b6501557c398dd
% unit-unverified: '1800 mm of escape route from foot of external escape stair' passed through as 1800
applies :- external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), within(BuildingElement, 1800).
obligation_met(BuildingElement, ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), fire_resisting_re30(BuildingElement).
obligation_met(BuildingElement, ExternalEscapeStair) :- building_element(BuildingElement), external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= external_escape_stair(ExternalEscapeStair), building_element(BuildingElement), within(BuildingElement, 1800), not obligation_met(BuildingElement, ExternalEscapeStair).
