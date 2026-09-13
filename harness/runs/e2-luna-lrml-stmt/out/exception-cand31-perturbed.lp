% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fd92a9b454f591d0
applies :- external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), within(ElementNearRoute, 1800).
obligation_met :- alternative_escape_routes_from_foot(AlternativeEscapeRoutesFromFoot).
obligation_met :- fire_resisting_re30(FireResistingRe30).
r1: violation <= external_escape_stair(ExternalEscapeStair), element_near_route(ElementNearRoute), within(ElementNearRoute, 1800), not obligation_met.
