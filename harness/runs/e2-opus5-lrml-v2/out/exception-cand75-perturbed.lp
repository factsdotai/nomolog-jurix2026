% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c3b22306c4ed864b
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- storey(Storey), flat(Flat), flat_on_storey(Flat, Storey).
obligation_met(Storey) :- storey(Storey), travel_distance(Storey, StoreyTravelDistance), max_travel_distance(Storey, StoreyMaxTravelDistance), StoreyTravelDistance <= StoreyMaxTravelDistance.
r1: violation <= storey(Storey), flat(Flat), flat_on_storey(Flat, Storey), not obligation_met(Storey).
r2: exempt_r2 <= storey(Storey), flat(Flat), flat_on_storey(Flat, Storey), independent_alternative_escape(Flat).
#conflict violation, exempt_r2.
r2 > r1.
