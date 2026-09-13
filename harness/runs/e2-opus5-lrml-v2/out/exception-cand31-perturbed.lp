% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9618b6bbcb23a03e
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- external_escape_stair(ExternalEscapeStair), element_of_building(ElementOfBuilding), element_near_route(ElementOfBuilding, ExternalEscapeStair), distance_to_escape_route(ElementOfBuilding, ElementOfBuildingDistanceToEscapeRoute), ElementOfBuildingDistanceToEscapeRoute <= 1800.
obligation_met(ElementOfBuilding) :- element_of_building(ElementOfBuilding), fire_resisting_re30(ElementOfBuilding).
r1: violation <= external_escape_stair(ExternalEscapeStair), element_of_building(ElementOfBuilding), element_near_route(ElementOfBuilding, ExternalEscapeStair), distance_to_escape_route(ElementOfBuilding, ElementOfBuildingDistanceToEscapeRoute), ElementOfBuildingDistanceToEscapeRoute <= 1800, not obligation_met(ElementOfBuilding).
r2: exempt_r2 <= external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
#conflict violation, exempt_r2.
r2 > r1.
