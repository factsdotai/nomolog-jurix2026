% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 72ae300bd0f952fa
applies :- internal_stair(InternalStair), external_escape_stair(ExternalEscapeStair), element_near_route(InternalStair, ExternalEscapeStair).
obligation_met(ExternalEscapeStair, InternalStair) :- external_escape_stair(ExternalEscapeStair), internal_stair(InternalStair), fire_resisting_re30(InternalStair).
obligation_met(ExternalEscapeStair, InternalStair) :- internal_stair(InternalStair), external_escape_stair(ExternalEscapeStair), alternative_escape_routes_from_foot(ExternalEscapeStair).
r1: violation <= internal_stair(InternalStair), external_escape_stair(ExternalEscapeStair), element_near_route(InternalStair, ExternalEscapeStair), not obligation_met(ExternalEscapeStair, InternalStair).
