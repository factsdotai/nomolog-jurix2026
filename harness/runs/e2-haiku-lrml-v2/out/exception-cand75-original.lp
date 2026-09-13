% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 57ab18884e66f096
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant travel_distance_storey
% term-flattened: nested call -> constant max_travel_distance_storey
applies :- flat(Flat), flat_on_storey(Flat, storey).
obligation_met :- travel_distance_storey <= max_travel_distance_storey.
r1: violation <= flat(Flat), flat_on_storey(Flat, storey), not obligation_met.
r2: exempt_r2 <= flat(Flat), flat_on_storey(Flat, storey), independent_alt_escape(Flat).
#conflict violation, exempt_r2.
r2 > r1.
