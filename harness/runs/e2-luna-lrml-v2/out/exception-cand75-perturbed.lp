% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f1b46259066b86c5
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- flat_on_storey(flat, storey), travel_distance(storey, distance), max_travel_distance(storey, limit).
obligation_met :- distance <= limit.
r1: violation <= flat_on_storey(flat, storey), travel_distance(storey, distance), max_travel_distance(storey, limit), not obligation_met.
r2: exempt_r2 <= flat_storey(storey), flat_on_storey(flat, storey), independent_alt_escape(flat).
#conflict violation, exempt_r2.
r2 > r1.
