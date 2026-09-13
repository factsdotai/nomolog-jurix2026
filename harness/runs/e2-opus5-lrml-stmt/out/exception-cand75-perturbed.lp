% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 90397554daa99c46
applies :- flat_storey(FlatStorey), flat_on_storey(FlatOnStorey).
obligation_met(FlatOnStorey, FlatStorey) :- flat_on_storey(FlatOnStorey), flat_storey(FlatStorey), travel_distance(FlatStorey, FlatStoreyTravelDistance), max_travel_distance(FlatStorey, FlatStoreyMaxTravelDistance), FlatStoreyTravelDistance <= FlatStoreyMaxTravelDistance.
obligation_met(FlatOnStorey, FlatStorey) :- flat_storey(FlatStorey), flat_on_storey(FlatOnStorey), independent_alt_escape(FlatOnStorey).
r1: violation <= flat_storey(FlatStorey), flat_on_storey(FlatOnStorey), not obligation_met(FlatOnStorey, FlatStorey).
