% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d2c15d09b844ebf0
applies :- flat_storey(FlatStorey), flat(Flat), flat_on_storey(Flat, FlatStorey).
obligation_met(Flat, FlatStorey) :- flat(Flat), flat_storey(FlatStorey), travel_distance(FlatStorey, FlatStoreyTravelDistance), max_travel_distance(FlatStorey, FlatStoreyMaxTravelDistance), FlatStoreyTravelDistance <= FlatStoreyMaxTravelDistance.
obligation_met(Flat, FlatStorey) :- flat_storey(FlatStorey), flat(Flat), independent_alt_escape(Flat).
r1: violation <= flat_storey(FlatStorey), flat(Flat), flat_on_storey(Flat, FlatStorey), not obligation_met(Flat, FlatStorey).
