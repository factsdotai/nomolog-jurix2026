% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e1afa253da55800a
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant travel_distance_storey
% term-flattened: nested call -> constant max_travel_distance_storey
applies :- flat_storey(storey).
obligation_met :- travel_distance_storey <= max_travel_distance_storey.
r1: violation <= flat_storey(storey), not obligation_met.
r2: exempt_r2 <= flat_storey(storey), flat_on_storey(flat, storey), independent_alt_escape(flat).
#conflict violation, exempt_r2.
r2 > r1.
