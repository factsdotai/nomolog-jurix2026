% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 73fd558c36defa60
applies :- flat_storey(storey), max_travel_distance(storey, limit), travel_distance(storey, distance), not neg_scope_1.
obligation_met :- distance <= limit.
r1: violation <= flat_storey(storey), max_travel_distance(storey, limit), travel_distance(storey, distance), not neg_scope_1, not obligation_met.
neg_scope_1 :- flat_on_storey(flat, storey), independent_alt_escape(flat).
