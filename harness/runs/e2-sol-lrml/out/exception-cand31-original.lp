% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d69e7e18e276d439
applies :- external_escape_stair(s1), element_near_route(e1, s1), not neg_scope_1.
obligation_met :- fire_resisting_re30(e1).
r1: violation <= external_escape_stair(s1), element_near_route(e1, s1), not neg_scope_1, not obligation_met.
neg_scope_1 :- alternative_escape_routes_from_foot(s1).
