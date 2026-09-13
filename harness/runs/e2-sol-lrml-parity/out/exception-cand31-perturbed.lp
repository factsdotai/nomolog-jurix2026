% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e4f01f1ebcbd4852
applies :- external_escape_stair(stair), element_near_route(element, stair).
obligation_met :- fire_resisting_re30(element).
obligation_met :- alternative_escape_routes_from_foot(stair).
r1: violation <= external_escape_stair(stair), element_near_route(element, stair), not obligation_met.
