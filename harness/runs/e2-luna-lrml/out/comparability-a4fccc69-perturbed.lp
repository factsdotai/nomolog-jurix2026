% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3e3a773957354e1c
applies :- exit_route(e, p), fire_wall(w), separated_part(p, w), fire_wall_door(d, w).
obligation_met :- separately_constructed(e), not neg_scope_1.
r1: violation <= exit_route(e, p), fire_wall(w), separated_part(p, w), fire_wall_door(d, w), not obligation_met.
neg_scope_1 :- uses_fire_wall_door(e, w).
