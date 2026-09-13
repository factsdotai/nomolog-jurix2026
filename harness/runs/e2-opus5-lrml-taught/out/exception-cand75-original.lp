% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 276e66ed6f1f917e
applies :- storey(Storey), flat(Flat), flat_on_storey(Flat, Storey), not neg_scope_1.
obligation_met(Storey) :- storey(Storey), travel_distance(Storey, StoreyTravelDistance), max_travel_distance(Storey, StoreyMaxTravelDistance), StoreyTravelDistance <= StoreyMaxTravelDistance.
r1: violation <= storey(Storey), flat(Flat), flat_on_storey(Flat, Storey), not neg_scope_1, not obligation_met(Storey).
neg_scope_1 :- flat(Flat), independent_alternative_escape(Flat).
