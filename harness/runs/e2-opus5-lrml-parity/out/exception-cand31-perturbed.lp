% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 61dca518d19b06ef
applies :- external_escape_stair(ExternalEscapeStair), building_part(BuildingPart), element_near_route(BuildingPart, ExternalEscapeStair).
obligation_met(BuildingPart, ExternalEscapeStair) :- external_escape_stair(ExternalEscapeStair), building_part(BuildingPart), fire_resisting_re30(BuildingPart).
obligation_met(BuildingPart, ExternalEscapeStair) :- building_part(BuildingPart), external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= external_escape_stair(ExternalEscapeStair), building_part(BuildingPart), element_near_route(BuildingPart, ExternalEscapeStair), not obligation_met(BuildingPart, ExternalEscapeStair).
