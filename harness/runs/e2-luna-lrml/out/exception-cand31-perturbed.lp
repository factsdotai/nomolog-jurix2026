% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 78164f38d62c43cb
applies :- external_escape_stair(s), element_near_route(e, s), not neg_scope_1.
obligation_met :- fire_resisting_re30(e).
r1: violation <= external_escape_stair(s), element_near_route(e, s), not neg_scope_1, not obligation_met.
neg_scope_1 :- alternative_escape_routes_from_foot(s).
